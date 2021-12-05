class ApiLinks {
  static const bool isStaging = true;
  static const String _devBase = "http://10.0.2.2:3000";
  static const String _prodBase = "http://f664-103-228-147-154.ngrok.io/";

  final String baseUrl = "${isStaging ? _prodBase : _devBase}/api/v1";

  String get websiteCheckApi => "/pa11y";
}
