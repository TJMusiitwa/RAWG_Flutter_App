part of swagger.api;

class Position {
  int id = null;

  String name = null;

  String slug = null;

  Position();

  @override
  String toString() {
    return 'Position[id=$id, name=$name, slug=$slug, ]';
  }

  Position.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'slug': slug};
  }

  static List<Position> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Position>()
        : json.map((value) => new Position.fromJson(value)).toList();
  }

  static Map<String, Position> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Position>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Position.fromJson(value));
    }
    return map;
  }
}
