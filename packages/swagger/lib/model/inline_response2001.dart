part of swagger.api;

class InlineResponse2001 {
  int count = null;

  String next = null;

  String previous = null;

  List<Person> results = [];

  InlineResponse2001();

  @override
  String toString() {
    return 'InlineResponse2001[count=$count, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse2001.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = Person.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results
    };
  }

  static List<InlineResponse2001> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<InlineResponse2001>()
        : json.map((value) => new InlineResponse2001.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2001> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2001>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new InlineResponse2001.fromJson(value));
    }
    return map;
  }
}
