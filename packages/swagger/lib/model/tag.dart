part of swagger.api;

class Tag {
  int id = null;

  String name = null;

  String slug = null;

  int gamesCount = null;

  String imageBackground = null;

  String language = null;

  Tag();

  @override
  String toString() {
    return 'Tag[id=$id, name=$name, slug=$slug, gamesCount=$gamesCount, imageBackground=$imageBackground, language=$language, ]';
  }

  Tag.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
    language = json['language'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'games_count': gamesCount,
      'image_background': imageBackground,
      'language': language
    };
  }

  static List<Tag> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Tag>()
        : json.map((value) => new Tag.fromJson(value)).toList();
  }

  static Map<String, Tag> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Tag>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Tag.fromJson(value));
    }
    return map;
  }
}
