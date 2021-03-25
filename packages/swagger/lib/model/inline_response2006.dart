part of swagger.api;

class InlineResponse2006 {
  int count = null;

  String next = null;

  String previous = null;

  List<ScreenShot> results = [];

  InlineResponse2006();

  @override
  String toString() {
    return 'InlineResponse2006[count=$count, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse2006.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = ScreenShot.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results
    };
  }

  static List<InlineResponse2006> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<InlineResponse2006>()
        : json.map((value) => new InlineResponse2006.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2006> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2006>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new InlineResponse2006.fromJson(value));
    }
    return map;
  }
}
