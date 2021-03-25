part of swagger.api;

class InlineResponse2007 {
  int count = null;

  String next = null;

  String previous = null;

  List<GameStoreFull> results = [];

  InlineResponse2007();

  @override
  String toString() {
    return 'InlineResponse2007[count=$count, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse2007.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = GameStoreFull.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results
    };
  }

  static List<InlineResponse2007> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<InlineResponse2007>()
        : json.map((value) => new InlineResponse2007.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2007> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2007>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new InlineResponse2007.fromJson(value));
    }
    return map;
  }
}
