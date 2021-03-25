part of swagger.api;

class Platform {
  int id = null;

  String name = null;

  String slug = null;

  int gamesCount = null;

  String imageBackground = null;

  String image = null;

  int yearStart = null;
  // range from 0 to 32767//

  int yearEnd = null;
  // range from 0 to 32767//
  Platform();

  @override
  String toString() {
    return 'Platform[id=$id, name=$name, slug=$slug, gamesCount=$gamesCount, imageBackground=$imageBackground, image=$image, yearStart=$yearStart, yearEnd=$yearEnd, ]';
  }

  Platform.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
    image = json['image'];
    yearStart = json['year_start'];
    yearEnd = json['year_end'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'games_count': gamesCount,
      'image_background': imageBackground,
      'image': image,
      'year_start': yearStart,
      'year_end': yearEnd
    };
  }

  static List<Platform> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Platform>()
        : json.map((value) => new Platform.fromJson(value)).toList();
  }

  static Map<String, Platform> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Platform>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Platform.fromJson(value));
    }
    return map;
  }
}
