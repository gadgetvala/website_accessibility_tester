import 'package:dio/dio.dart';
import 'package:wat/api/core/api_links.dart';
import 'package:wat/locator/locator.dart';

class ApiCore {
  static final ApiLinks _apiLinks = locator<ApiLinks>();
  final Dio apiClient = Dio(
    BaseOptions(
      baseUrl: _apiLinks.baseUrl,
    ),
  );

  void dispose() {
    apiClient.close();
  }
}
