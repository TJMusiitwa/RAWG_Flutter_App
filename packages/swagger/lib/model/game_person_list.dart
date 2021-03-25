part of swagger.api;

class GamePersonList {
  int id = null;

  String name = null;

  String slug = null;

  String image = null;

  String imageBackground = null;

  int gamesCount = null;

  GamePersonList();

  @override
  String toString() {
    return 'GamePersonList[id=$id, name=$name, slug=$slug, image=$image, imageBackground=$imageBackground, gamesCount=$gamesCount, ]';
  }

  GamePersonList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    imageBackground = json['image_background'];
    gamesCount = json['games_count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'image': image,
      'image_background': imageBackground,
      'games_count': gamesCount
    };
  }

  static List<GamePersonList> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<GamePersonList>()
        : json.map((value) => new GamePersonList.fromJson(value)).toList();
  }

  static Map<String, GamePersonList> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GamePersonList>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new GamePersonList.fromJson(value));
    }
    return map;
  }
}
