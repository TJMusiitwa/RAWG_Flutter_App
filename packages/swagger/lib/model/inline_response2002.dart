part of swagger.api;

class InlineResponse2002 {
  int count = null;

  String next = null;

  String previous = null;

  List<Developer> results = [];

  InlineResponse2002();

  @override
  String toString() {
    return 'InlineResponse2002[count=$count, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse2002.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = Developer.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results
    };
  }

  static List<InlineResponse2002> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<InlineResponse2002>()
        : json.map((value) => new InlineResponse2002.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2002> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2002>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new InlineResponse2002.fromJson(value));
    }
    return map;
  }
}
