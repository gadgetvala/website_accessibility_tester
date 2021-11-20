class ApiLinks {
  static const bool isStaging = false;
  static const String _devBase = "http://10.0.2.2:3000";
  static const String _prodBase = "";

  final String baseUrl = "${isStaging ? _prodBase : _devBase}/api/v1";

  String get websiteCheckApi => "/pa11y";
}
