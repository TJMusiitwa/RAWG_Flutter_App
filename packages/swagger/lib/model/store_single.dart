part of swagger.api;

class StoreSingle {
  int id = null;

  String name = null;

  String domain = null;

  String slug = null;

  int gamesCount = null;

  String imageBackground = null;

  String description = null;

  StoreSingle();

  @override
  String toString() {
    return 'StoreSingle[id=$id, name=$name, domain=$domain, slug=$slug, gamesCount=$gamesCount, imageBackground=$imageBackground, description=$description, ]';
  }

  StoreSingle.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    domain = json['domain'];
    slug = json['slug'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'domain': domain,
      'slug': slug,
      'games_count': gamesCount,
      'image_background': imageBackground,
      'description': description
    };
  }

  static List<StoreSingle> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<StoreSingle>()
        : json.map((value) => new StoreSingle.fromJson(value)).toList();
  }

  static Map<String, StoreSingle> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StoreSingle>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new StoreSingle.fromJson(value));
    }
    return map;
  }
}
