import 'package:wat/api/core/api_core.dart';
import 'package:wat/api/core/api_exporter.dart';
import 'package:wat/api/core/api_links.dart';
import 'package:wat/global/fcm_token.dart';
import 'package:wat/global/shared_preferences.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => FcmToken());
  locator.registerLazySingleton(() => Preferences());
  locator.registerLazySingleton(() => ApiLinks());
  locator.registerLazySingleton(() => ApiExporter());
}
