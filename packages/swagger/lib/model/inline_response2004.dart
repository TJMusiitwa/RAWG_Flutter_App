part of swagger.api;

class InlineResponse2004 {
  int count = null;

  String next = null;

  String previous = null;

  List<GameSingle> results = [];

  InlineResponse2004();

  @override
  String toString() {
    return 'InlineResponse2004[count=$count, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse2004.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = GameSingle.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results
    };
  }

  static List<InlineResponse2004> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<InlineResponse2004>()
        : json.map((value) => new InlineResponse2004.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2004> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2004>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new InlineResponse2004.fromJson(value));
    }
    return map;
  }
}
