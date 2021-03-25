part of swagger.api;

class Publisher {
  int id = null;

  String name = null;

  String slug = null;

  int gamesCount = null;

  String imageBackground = null;

  Publisher();

  @override
  String toString() {
    return 'Publisher[id=$id, name=$name, slug=$slug, gamesCount=$gamesCount, imageBackground=$imageBackground, ]';
  }

  Publisher.fromJson(Map<String, dynamic> json) {
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

  static List<Publisher> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Publisher>()
        : json.map((value) => new Publisher.fromJson(value)).toList();
  }

  static Map<String, Publisher> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Publisher>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Publisher.fromJson(value));
    }
    return map;
  }
}
