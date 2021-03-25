part of swagger.api;

class Game {
  int id = null;

  String slug = null;

  String name = null;

  DateTime released = null;

  bool tba = null;

  String backgroundImage = null;

  num rating = null;

  int ratingTop = null;

  Object ratings = null;

  int ratingsCount = null;

  String reviewsTextCount = null;

  int added = null;

  Object addedByStatus = null;

  int metacritic = null;

/* in hours */
  int playtime = null;

  int suggestionsCount = null;

  DateTime updated = null;

  GameEsrbRating esrbRating = null;

  List<GamePlatforms> platforms = [];

  Game();

  @override
  String toString() {
    return 'Game[id=$id, slug=$slug, name=$name, released=$released, tba=$tba, backgroundImage=$backgroundImage, rating=$rating, ratingTop=$ratingTop, ratings=$ratings, ratingsCount=$ratingsCount, reviewsTextCount=$reviewsTextCount, added=$added, addedByStatus=$addedByStatus, metacritic=$metacritic, playtime=$playtime, suggestionsCount=$suggestionsCount, updated=$updated, esrbRating=$esrbRating, platforms=$platforms, ]';
  }

  Game.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    released = new DateTime(json['released']).toLocal();
    tba = json['tba'];
    backgroundImage = json['background_image'];
    rating = json['rating'];
    ratingTop = json['rating_top'];
    ratings = json['ratings'];
    ratingsCount = json['ratings_count'];
    reviewsTextCount = json['reviews_text_count'];
    added = json['added'];
    addedByStatus = json['added_by_status'];
    metacritic = json['metacritic'];
    playtime = json['playtime'];
    suggestionsCount = json['suggestions_count'];
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    esrbRating = new GameEsrbRating.fromJson(json['esrb_rating']);
    platforms = GamePlatforms.listFromJson(json['platforms']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'slug': slug,
      'name': name,
      'released': released,
      'tba': tba,
      'background_image': backgroundImage,
      'rating': rating,
      'rating_top': ratingTop,
      'ratings': ratings,
      'ratings_count': ratingsCount,
      'reviews_text_count': reviewsTextCount,
      'added': added,
      'added_by_status': addedByStatus,
      'metacritic': metacritic,
      'playtime': playtime,
      'suggestions_count': suggestionsCount,
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'esrb_rating': esrbRating,
      'platforms': platforms
    };
  }

  static List<Game> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Game>()
        : json.map((value) => new Game.fromJson(value)).toList();
  }

  static Map<String, Game> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Game>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Game.fromJson(value));
    }
    return map;
  }
}
