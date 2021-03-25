part of swagger.api;

class PlatformSingle {
  int id = null;

  String name = null;

  String slug = null;

  int gamesCount = null;

  String imageBackground = null;

  String description = null;

  String image = null;

  int yearStart = null;
  // range from 0 to 32767//

  int yearEnd = null;
  // range from 0 to 32767//
  PlatformSingle();

  @override
  String toString() {
    return 'PlatformSingle[id=$id, name=$name, slug=$slug, gamesCount=$gamesCount, imageBackground=$imageBackground, description=$description, image=$image, yearStart=$yearStart, yearEnd=$yearEnd, ]';
  }

  PlatformSingle.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
    description = json['description'];
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
      'description': description,
      'image': image,
      'year_start': yearStart,
      'year_end': yearEnd
    };
  }

  static List<PlatformSingle> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PlatformSingle>()
        : json.map((value) => new PlatformSingle.fromJson(value)).toList();
  }

  static Map<String, PlatformSingle> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PlatformSingle>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PlatformSingle.fromJson(value));
    }
    return map;
  }
}
