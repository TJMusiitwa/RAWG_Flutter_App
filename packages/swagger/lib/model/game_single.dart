part of swagger.api;

class GameSingle {
  int id = null;

  String slug = null;

  String name = null;

  String nameOriginal = null;

  String description = null;

  int metacritic = null;

  List<GamePlatformMetacritic> metacriticPlatforms = [];

  DateTime released = null;

  bool tba = null;

  DateTime updated = null;

  String backgroundImage = null;

  String backgroundImageAdditional = null;

  String website = null;

  num rating = null;

  int ratingTop = null;

  Object ratings = null;

  Object reactions = null;

  int added = null;

  Object addedByStatus = null;

/* in hours */
  int playtime = null;

  int screenshotsCount = null;

  int moviesCount = null;

  int creatorsCount = null;

  int achievementsCount = null;

  String parentAchievementsCount = null;

/* For example \"https://www.reddit.com/r/uncharted/\" or \"uncharted\" */
  String redditUrl = null;

  String redditName = null;

  String redditDescription = null;

  String redditLogo = null;

  int redditCount = null;

  String twitchCount = null;

  String youtubeCount = null;

  String reviewsTextCount = null;

  int ratingsCount = null;

  int suggestionsCount = null;

  List<String> alternativeNames = [];

/* For example \"http://www.metacritic.com/game/playstation-4/the-witcher-3-wild-hunt\" */
  String metacriticUrl = null;

  int parentsCount = null;

  int additionsCount = null;

  int gameSeriesCount = null;

  GameEsrbRating esrbRating = null;

  List<GamePlatforms> platforms = [];

  GameSingle();

  @override
  String toString() {
    return 'GameSingle[id=$id, slug=$slug, name=$name, nameOriginal=$nameOriginal, description=$description, metacritic=$metacritic, metacriticPlatforms=$metacriticPlatforms, released=$released, tba=$tba, updated=$updated, backgroundImage=$backgroundImage, backgroundImageAdditional=$backgroundImageAdditional, website=$website, rating=$rating, ratingTop=$ratingTop, ratings=$ratings, reactions=$reactions, added=$added, addedByStatus=$addedByStatus, playtime=$playtime, screenshotsCount=$screenshotsCount, moviesCount=$moviesCount, creatorsCount=$creatorsCount, achievementsCount=$achievementsCount, parentAchievementsCount=$parentAchievementsCount, redditUrl=$redditUrl, redditName=$redditName, redditDescription=$redditDescription, redditLogo=$redditLogo, redditCount=$redditCount, twitchCount=$twitchCount, youtubeCount=$youtubeCount, reviewsTextCount=$reviewsTextCount, ratingsCount=$ratingsCount, suggestionsCount=$suggestionsCount, alternativeNames=$alternativeNames, metacriticUrl=$metacriticUrl, parentsCount=$parentsCount, additionsCount=$additionsCount, gameSeriesCount=$gameSeriesCount, esrbRating=$esrbRating, platforms=$platforms, ]';
  }

  GameSingle.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    nameOriginal = json['name_original'];
    description = json['description'];
    metacritic = json['metacritic'];
    metacriticPlatforms =
        GamePlatformMetacritic.listFromJson(json['metacritic_platforms']);
    released = new DateTime(json['released']).toLocal();
    //released = new DateTime.fromJson(json['released']);
    tba = json['tba'];
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    backgroundImage = json['background_image'];
    backgroundImageAdditional = json['background_image_additional'];
    website = json['website'];
    rating = json['rating'];
    ratingTop = json['rating_top'];
    ratings = json['ratings'];
    reactions = json['reactions'];
    added = json['added'];
    addedByStatus = json['added_by_status'];
    playtime = json['playtime'];
    screenshotsCount = json['screenshots_count'];
    moviesCount = json['movies_count'];
    creatorsCount = json['creators_count'];
    achievementsCount = json['achievements_count'];
    parentAchievementsCount = json['parent_achievements_count'];
    redditUrl = json['reddit_url'];
    redditName = json['reddit_name'];
    redditDescription = json['reddit_description'];
    redditLogo = json['reddit_logo'];
    redditCount = json['reddit_count'];
    twitchCount = json['twitch_count'];
    youtubeCount = json['youtube_count'];
    reviewsTextCount = json['reviews_text_count'];
    ratingsCount = json['ratings_count'];
    suggestionsCount = json['suggestions_count'];
    alternativeNames = (json['alternative_names'] as List)
        .map((item) => item as String)
        .toList();
    metacriticUrl = json['metacritic_url'];
    parentsCount = json['parents_count'];
    additionsCount = json['additions_count'];
    gameSeriesCount = json['game_series_count'];
    esrbRating = new GameEsrbRating.fromJson(json['esrb_rating']);
    platforms = GamePlatforms.listFromJson(json['platforms']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'slug': slug,
      'name': name,
      'name_original': nameOriginal,
      'description': description,
      'metacritic': metacritic,
      'metacritic_platforms': metacriticPlatforms,
      'released': released,
      'tba': tba,
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'background_image': backgroundImage,
      'background_image_additional': backgroundImageAdditional,
      'website': website,
      'rating': rating,
      'rating_top': ratingTop,
      'ratings': ratings,
      'reactions': reactions,
      'added': added,
      'added_by_status': addedByStatus,
      'playtime': playtime,
      'screenshots_count': screenshotsCount,
      'movies_count': moviesCount,
      'creators_count': creatorsCount,
      'achievements_count': achievementsCount,
      'parent_achievements_count': parentAchievementsCount,
      'reddit_url': redditUrl,
      'reddit_name': redditName,
      'reddit_description': redditDescription,
      'reddit_logo': redditLogo,
      'reddit_count': redditCount,
      'twitch_count': twitchCount,
      'youtube_count': youtubeCount,
      'reviews_text_count': reviewsTextCount,
      'ratings_count': ratingsCount,
      'suggestions_count': suggestionsCount,
      'alternative_names': alternativeNames,
      'metacritic_url': metacriticUrl,
      'parents_count': parentsCount,
      'additions_count': additionsCount,
      'game_series_count': gameSeriesCount,
      'esrb_rating': esrbRating,
      'platforms': platforms
    };
  }

  static List<GameSingle> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<GameSingle>()
        : json.map((value) => new GameSingle.fromJson(value)).toList();
  }

  static Map<String, GameSingle> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GameSingle>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new GameSingle.fromJson(value));
    }
    return map;
  }
}
