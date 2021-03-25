part of swagger.api;

class GameStoreFull {
  int id = null;

  String gameId = null;

  String storeId = null;

  String url = null;

  GameStoreFull();

  @override
  String toString() {
    return 'GameStoreFull[id=$id, gameId=$gameId, storeId=$storeId, url=$url, ]';
  }

  GameStoreFull.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    gameId = json['game_id'];
    storeId = json['store_id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'game_id': gameId, 'store_id': storeId, 'url': url};
  }

  static List<GameStoreFull> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<GameStoreFull>()
        : json.map((value) => new GameStoreFull.fromJson(value)).toList();
  }

  static Map<String, GameStoreFull> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GameStoreFull>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new GameStoreFull.fromJson(value));
    }
    return map;
  }
}
