part of swagger.api;

class InlineResponse200 {
  int count = null;

  String next = null;

  String previous = null;

  List<Position> results = [];

  InlineResponse200();

  @override
  String toString() {
    return 'InlineResponse200[count=$count, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse200.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = Position.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results
    };
  }

  static List<InlineResponse200> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<InlineResponse200>()
        : json.map((value) => new InlineResponse200.fromJson(value)).toList();
  }

  static Map<String, InlineResponse200> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse200>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new InlineResponse200.fromJson(value));
    }
    return map;
  }
}
