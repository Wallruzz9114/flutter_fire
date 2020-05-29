import 'package:flutter/foundation.dart';

class DialogRequest {
  DialogRequest({
    @required this.title,
    @required this.description,
    @required this.buttonTitle,
    this.cancelTitle,
  });

  final String title;
  final String description;
  final String buttonTitle;
  final String cancelTitle;
}
