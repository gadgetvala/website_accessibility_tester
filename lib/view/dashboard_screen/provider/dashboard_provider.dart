import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wat/api/core/api_exporter.dart';
import 'package:wat/api/core/custom_response.dart';
import 'package:wat/locator/locator.dart';
import 'package:wat/model/pa11y_response_model.dart';

final dashboardProvider =
    ChangeNotifierProvider((ref) => DashboardProvider(ref.read));

class DashboardProvider extends ChangeNotifier {
  bool isLoading = false;
  final Reader ref;
  final TextEditingController searchBoxController = TextEditingController();
  Data? data;

  DashboardProvider(this.ref);

  // Disposing Methods
  @override
  void dispose() {
    searchBoxController.dispose();
    super.dispose();
  }

  toggleLoading({required bool n}) {
    isLoading = n;
    notifyListeners();
  }

  Future getWebsiteDetails() async {
    try {
      toggleLoading(n: true);
      data = null;

      final api = locator<ApiExporter>();
      final res =
          await api.getWebsiteDetails(websiteUrl: searchBoxController.text);

      // Check Is their any error or not
      if (res.status == Status.ERROR) {
        Fluttertoast.showToast(msg: res.message);
        return;
      }

      data = res.data.data;
    } catch (e) {
      // Something
    } finally {
      toggleLoading(n: false);
    }
  }
}
