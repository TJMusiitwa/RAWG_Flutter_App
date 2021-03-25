part of swagger.api;

class InlineResponse2008 {
  int count = null;

  String next = null;

  String previous = null;

  List<Genre> results = [];

  InlineResponse2008();

  @override
  String toString() {
    return 'InlineResponse2008[count=$count, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse2008.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = Genre.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results
    };
  }

  static List<InlineResponse2008> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<InlineResponse2008>()
        : json.map((value) => new InlineResponse2008.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2008> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2008>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new InlineResponse2008.fromJson(value));
    }
    return map;
  }
}
