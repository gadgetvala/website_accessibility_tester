import 'package:dio/dio.dart';
import 'package:wat/api/core/api_core.dart';
import 'package:wat/api/core/api_links.dart';
import 'package:wat/api/core/custom_response.dart';
import 'package:wat/locator/locator.dart';

mixin RandomApi on ApiCore {
  final ApiLinks endpoint = locator<ApiLinks>();
}
