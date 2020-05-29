import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseWidget<T extends ChangeNotifier> extends StatefulWidget {
  const BaseWidget({this.builder, this.onModelReady, this.model, this.child});

  final Widget Function(BuildContext context, T model, Widget child) builder;
  final Function(T) onModelReady;
  final T model;
  final Widget child;

  @override
  _BaseWidgetState<T> createState() => _BaseWidgetState<T>();
}

class _BaseWidgetState<T extends ChangeNotifier> extends State<BaseWidget<T>> {
  T _model;

  @override
  void initState() {
    _model = widget.model;

    if (widget.onModelReady != null) {
      widget.onModelReady(_model);
    }

    super.initState();
  }

  @override
  ChangeNotifierProvider<T> build(BuildContext context) =>
      ChangeNotifierProvider<T>(
        create: (BuildContext context) => _model,
        child: Consumer<T>(
          child: widget.child,
          builder: widget.builder ??
              (BuildContext context, T model, Widget child) => child,
        ),
      );
}
