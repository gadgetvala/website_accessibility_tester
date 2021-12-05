class PallyResponse {
  final String status;
  final Data data;

  PallyResponse({
    required this.status,
    required this.data,
  });

  factory PallyResponse.fromJson(Map<String, dynamic> json) {
    return PallyResponse(
      status: json['status'],
      data: Data.fromJson(json['data']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = this.data.toJson();
    return data;
  }
}

class Data {
  final String documentTitle;
  final String pageUrl;
  final List<Issues> issues;

  Data({
    required this.documentTitle,
    required this.pageUrl,
    required this.issues,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    List<Issues> issues = [];
    if (json['issues'] != null) {
      json['issues'].forEach((v) {
        issues.add(Issues.fromJson(v));
      });
    }

    return Data(
      documentTitle: json['documentTitle'],
      pageUrl: json['pageUrl'],
      issues: issues,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['documentTitle'] = this.documentTitle;
    data['pageUrl'] = this.pageUrl;
    data['issues'] = this.issues.map((v) => v.toJson()).toList();

    return data;
  }
}

class Issues {
  final String code;
  final String message;
  final String context;
  final String selector;

  Issues({
    required this.code,
    required this.message,
    required this.context,
    required this.selector,
  });

  factory Issues.fromJson(Map<String, dynamic> json) {
    return Issues(
      code: json['code'],
      message: json['message'],
      context: json['context'],
      selector: json['selector'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['message'] = message;
    data['context'] = context;
    data['selector'] = selector;
    return data;
  }
}
