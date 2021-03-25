part of swagger.api;

class GamePlatforms {
  GamePlatform platform = null;

  String releasedAt = null;

  GameRequirements requirements = null;

  GamePlatforms();

  @override
  String toString() {
    return 'GamePlatforms[platform=$platform, releasedAt=$releasedAt, requirements=$requirements, ]';
  }

  GamePlatforms.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    platform = new GamePlatform.fromJson(json['platform']);
    releasedAt = json['released_at'];
    requirements = new GameRequirements.fromJson(json['requirements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'platform': platform,
      'released_at': releasedAt,
      'requirements': requirements
    };
  }

  static List<GamePlatforms> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<GamePlatforms>()
        : json.map((value) => new GamePlatforms.fromJson(value)).toList();
  }

  static Map<String, GamePlatforms> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GamePlatforms>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new GamePlatforms.fromJson(value));
    }
    return map;
  }
}
