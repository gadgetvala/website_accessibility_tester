class ApiLinks {
  static const bool isStaging = false;
  static const String _devBase = "https://watbackend.herokuapp.com";
  static const String _prodBase = "";

  final String baseUrl = "${isStaging ? _prodBase : _devBase}/api/v1";

  String get websiteCheckApi => "/pa11y";
}
