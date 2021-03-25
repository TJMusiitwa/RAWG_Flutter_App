part of swagger.api;

class TagSingle {
  int id = null;

  String name = null;

  String slug = null;

  int gamesCount = null;

  String imageBackground = null;

  String description = null;

  TagSingle();

  @override
  String toString() {
    return 'TagSingle[id=$id, name=$name, slug=$slug, gamesCount=$gamesCount, imageBackground=$imageBackground, description=$description, ]';
  }

  TagSingle.fromJson(Map<String, dynamic> json) {
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

  static List<TagSingle> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<TagSingle>()
        : json.map((value) => new TagSingle.fromJson(value)).toList();
  }

  static Map<String, TagSingle> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TagSingle>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new TagSingle.fromJson(value));
    }
    return map;
  }
}
