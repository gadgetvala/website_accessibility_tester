import 'package:flutter/foundation.dart';

abstract class DefaultChangeNotifier extends ChangeNotifier {
  bool loading = false;

  // ignore: avoid_positional_boolean_parameters
  void toggleLoadingOn(bool val) {
    loading = val;
    notifyListeners();
  }
}
