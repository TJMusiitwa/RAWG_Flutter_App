part of swagger.api;

class GamePlatformMetacritic {
  int metascore = null;

  String url = null;

  GamePlatformMetacritic();

  @override
  String toString() {
    return 'GamePlatformMetacritic[metascore=$metascore, url=$url, ]';
  }

  GamePlatformMetacritic.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    metascore = json['metascore'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {'metascore': metascore, 'url': url};
  }

  static List<GamePlatformMetacritic> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<GamePlatformMetacritic>()
        : json
            .map((value) => new GamePlatformMetacritic.fromJson(value))
            .toList();
  }

  static Map<String, GamePlatformMetacritic> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GamePlatformMetacritic>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new GamePlatformMetacritic.fromJson(value));
    }
    return map;
  }
}
