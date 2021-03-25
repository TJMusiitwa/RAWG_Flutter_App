part of swagger.api;

class PublisherSingle {
  int id = null;

  String name = null;

  String slug = null;

  int gamesCount = null;

  String imageBackground = null;

  String description = null;

  PublisherSingle();

  @override
  String toString() {
    return 'PublisherSingle[id=$id, name=$name, slug=$slug, gamesCount=$gamesCount, imageBackground=$imageBackground, description=$description, ]';
  }

  PublisherSingle.fromJson(Map<String, dynamic> json) {
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

  static List<PublisherSingle> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PublisherSingle>()
        : json.map((value) => new PublisherSingle.fromJson(value)).toList();
  }

  static Map<String, PublisherSingle> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PublisherSingle>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PublisherSingle.fromJson(value));
    }
    return map;
  }
}
