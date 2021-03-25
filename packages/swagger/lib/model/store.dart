part of swagger.api;

class Store {
  int id = null;

  String name = null;

  String domain = null;

  String slug = null;

  int gamesCount = null;

  String imageBackground = null;

  Store();

  @override
  String toString() {
    return 'Store[id=$id, name=$name, domain=$domain, slug=$slug, gamesCount=$gamesCount, imageBackground=$imageBackground, ]';
  }

  Store.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    domain = json['domain'];
    slug = json['slug'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'domain': domain,
      'slug': slug,
      'games_count': gamesCount,
      'image_background': imageBackground
    };
  }

  static List<Store> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Store>()
        : json.map((value) => new Store.fromJson(value)).toList();
  }

  static Map<String, Store> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Store>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Store.fromJson(value));
    }
    return map;
  }
}
