part of swagger.api;

class InlineResponse20011 {
  int count = null;

  String next = null;

  String previous = null;

  List<Publisher> results = [];

  InlineResponse20011();

  @override
  String toString() {
    return 'InlineResponse20011[count=$count, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse20011.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = Publisher.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results
    };
  }

  static List<InlineResponse20011> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<InlineResponse20011>()
        : json.map((value) => new InlineResponse20011.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20011> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20011>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new InlineResponse20011.fromJson(value));
    }
    return map;
  }
}
