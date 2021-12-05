import 'package:dio/dio.dart';
import 'package:wat/api/core/api_core.dart';
import 'package:wat/api/core/api_links.dart';
import 'package:wat/api/core/custom_response.dart';
import 'package:wat/locator/locator.dart';
import 'package:wat/model/pa11y_response_model.dart';

mixin Pa11yApi on ApiCore {
  final ApiLinks endpoint = locator<ApiLinks>();

  Future<CustomResponse<PallyResponse>> getWebsiteDetails(
      {required String websiteUrl}) async {
    try {
      final Response res = await ApiCore.apiClient.get(
        endpoint.websiteCheckApi,
        queryParameters: {
          'website': websiteUrl,
        },
      );

      return CustomResponse.completed(PallyResponse.fromJson(res.data));
    } on DioError catch (e) {
      return CustomResponse.error(
          (e.response as Map<String, dynamic>)['message'] as String);
    } catch (e) {
      return CustomResponse.error("Something went wrong");
    }
  }
}
