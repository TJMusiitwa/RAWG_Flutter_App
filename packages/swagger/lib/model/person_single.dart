part of swagger.api;

class PersonSingle {
  int id = null;

  String name = null;

  String slug = null;

  String image = null;

  String imageBackground = null;

  String description = null;

  int gamesCount = null;

  int reviewsCount = null;

  String rating = null;

  int ratingTop = null;

  DateTime updated = null;

  PersonSingle();

  @override
  String toString() {
    return 'PersonSingle[id=$id, name=$name, slug=$slug, image=$image, imageBackground=$imageBackground, description=$description, gamesCount=$gamesCount, reviewsCount=$reviewsCount, rating=$rating, ratingTop=$ratingTop, updated=$updated, ]';
  }

  PersonSingle.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    imageBackground = json['image_background'];
    description = json['description'];
    gamesCount = json['games_count'];
    reviewsCount = json['reviews_count'];
    rating = json['rating'];
    ratingTop = json['rating_top'];
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'image': image,
      'image_background': imageBackground,
      'description': description,
      'games_count': gamesCount,
      'reviews_count': reviewsCount,
      'rating': rating,
      'rating_top': ratingTop,
      'updated': updated == null ? '' : updated.toUtc().toIso8601String()
    };
  }

  static List<PersonSingle> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PersonSingle>()
        : json.map((value) => new PersonSingle.fromJson(value)).toList();
  }

  static Map<String, PersonSingle> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PersonSingle>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PersonSingle.fromJson(value));
    }
    return map;
  }
}
