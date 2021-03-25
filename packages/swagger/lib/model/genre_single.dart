part of swagger.api;

class GenreSingle {
  int id = null;

  String name = null;

  String slug = null;

  int gamesCount = null;

  String imageBackground = null;

  String description = null;

  GenreSingle();

  @override
  String toString() {
    return 'GenreSingle[id=$id, name=$name, slug=$slug, gamesCount=$gamesCount, imageBackground=$imageBackground, description=$description, ]';
  }

  GenreSingle.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'games_count': gamesCount,
      'image_background': imageBackground,
      'description': description
    };
  }

  static List<GenreSingle> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<GenreSingle>()
        : json.map((value) => new GenreSingle.fromJson(value)).toList();
  }

  static Map<String, GenreSingle> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GenreSingle>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new GenreSingle.fromJson(value));
    }
    return map;
  }
}
