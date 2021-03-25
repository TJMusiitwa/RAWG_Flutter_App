part of swagger.api;

class GameEsrbRating {
  int id = null;

  String slug = null;
  //enum slugEnum {  everyone,  everyone-10-plus,  teen,  mature,  adults-only,  rating-pending,  };

  String name = null;
  //enum nameEnum {  Everyone,  Everyone 10+,  Teen,  Mature,  Adults Only,  Rating Pending,  };
  GameEsrbRating();

  @override
  String toString() {
    return 'GameEsrbRating[id=$id, slug=$slug, name=$name, ]';
  }

  GameEsrbRating.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'slug': slug, 'name': name};
  }

  static List<GameEsrbRating> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<GameEsrbRating>()
        : json.map((value) => new GameEsrbRating.fromJson(value)).toList();
  }

  static Map<String, GameEsrbRating> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GameEsrbRating>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new GameEsrbRating.fromJson(value));
    }
    return map;
  }
}
