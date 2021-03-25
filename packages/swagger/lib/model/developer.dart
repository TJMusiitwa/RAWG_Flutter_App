part of swagger.api;

class Developer {
  int id = null;

  String name = null;

  String slug = null;

  int gamesCount = null;

  String imageBackground = null;

  Developer();

  @override
  String toString() {
    return 'Developer[id=$id, name=$name, slug=$slug, gamesCount=$gamesCount, imageBackground=$imageBackground, ]';
  }

  Developer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'games_count': gamesCount,
      'image_background': imageBackground
    };
  }

  static List<Developer> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Developer>()
        : json.map((value) => new Developer.fromJson(value)).toList();
  }

  static Map<String, Developer> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Developer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Developer.fromJson(value));
    }
    return map;
  }
}
