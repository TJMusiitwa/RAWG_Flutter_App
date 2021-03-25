part of swagger.api;

class InlineResponse2005 {
  int count = null;

  String next = null;

  String previous = null;

  List<GamePersonList> results = [];

  InlineResponse2005();

  @override
  String toString() {
    return 'InlineResponse2005[count=$count, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse2005.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = GamePersonList.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results
    };
  }

  static List<InlineResponse2005> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<InlineResponse2005>()
        : json.map((value) => new InlineResponse2005.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2005> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2005>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new InlineResponse2005.fromJson(value));
    }
    return map;
  }
}
