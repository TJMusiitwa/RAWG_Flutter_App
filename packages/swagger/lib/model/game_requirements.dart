part of swagger.api;

class GameRequirements {
  String minimum = null;

  String recommended = null;

  GameRequirements();

  @override
  String toString() {
    return 'GameRequirements[minimum=$minimum, recommended=$recommended, ]';
  }

  GameRequirements.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    minimum = json['minimum'];
    recommended = json['recommended'];
  }

  Map<String, dynamic> toJson() {
    return {'minimum': minimum, 'recommended': recommended};
  }

  static List<GameRequirements> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<GameRequirements>()
        : json.map((value) => new GameRequirements.fromJson(value)).toList();
  }

  static Map<String, GameRequirements> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GameRequirements>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new GameRequirements.fromJson(value));
    }
    return map;
  }
}
