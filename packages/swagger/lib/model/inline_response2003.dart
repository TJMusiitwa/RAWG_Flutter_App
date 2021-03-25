part of swagger.api;

class InlineResponse2003 {
  int count = null;

  String next = null;

  String previous = null;

  List<Game> results = [];

  InlineResponse2003();

  @override
  String toString() {
    return 'InlineResponse2003[count=$count, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse2003.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = Game.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results
    };
  }

  static List<InlineResponse2003> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<InlineResponse2003>()
        : json.map((value) => new InlineResponse2003.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2003> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2003>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new InlineResponse2003.fromJson(value));
    }
    return map;
  }
}
