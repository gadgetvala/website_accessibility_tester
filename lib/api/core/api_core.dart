import 'package:dio/dio.dart';
import 'package:wat/api/core/api_links.dart';
import 'package:wat/global/shared_preferences.dart';
import 'package:wat/locator/locator.dart';

class ApiCore {
  static final Preferences _prefs = locator<Preferences>();
  static final ApiLinks _apiLinks = locator<ApiLinks>();
  final Dio apiClient = Dio(
    BaseOptions(
      baseUrl: _apiLinks.baseUrl,
      headers: {
        'Authorization': 'Bearer ${_prefs.token}',
      },
    ),
  );

  void dispose() {
    apiClient.close();
  }
}
