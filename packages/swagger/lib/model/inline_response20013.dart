part of swagger.api;

class InlineResponse20013 {
  int count = null;

  String next = null;

  String previous = null;

  List<Tag> results = [];

  InlineResponse20013();

  @override
  String toString() {
    return 'InlineResponse20013[count=$count, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse20013.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = Tag.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results
    };
  }

  static List<InlineResponse20013> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<InlineResponse20013>()
        : json.map((value) => new InlineResponse20013.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20013>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new InlineResponse20013.fromJson(value));
    }
    return map;
  }
}
