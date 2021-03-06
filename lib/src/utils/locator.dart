import 'package:flutter_fire/src/services/authentication_service.dart';
import 'package:flutter_fire/src/services/dialog_service.dart';
import 'package:flutter_fire/src/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerSingleton(() => AuthenticationService());
}
