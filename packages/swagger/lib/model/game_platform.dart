part of swagger.api;

class GamePlatform {
  int id = null;

  String slug = null;

  String name = null;

  GamePlatform();

  @override
  String toString() {
    return 'GamePlatform[id=$id, slug=$slug, name=$name, ]';
  }

  GamePlatform.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'slug': slug, 'name': name};
  }

  static List<GamePlatform> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<GamePlatform>()
        : json.map((value) => new GamePlatform.fromJson(value)).toList();
  }

  static Map<String, GamePlatform> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GamePlatform>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new GamePlatform.fromJson(value));
    }
    return map;
  }
}
