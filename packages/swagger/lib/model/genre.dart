part of swagger.api;

class Genre {
  int id = null;

  String name = null;

  String slug = null;

  int gamesCount = null;

  String imageBackground = null;

  Genre();

  @override
  String toString() {
    return 'Genre[id=$id, name=$name, slug=$slug, gamesCount=$gamesCount, imageBackground=$imageBackground, ]';
  }

  Genre.fromJson(Map<String, dynamic> json) {
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

  static List<Genre> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Genre>()
        : json.map((value) => new Genre.fromJson(value)).toList();
  }

  static Map<String, Genre> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Genre>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Genre.fromJson(value));
    }
    return map;
  }
}
