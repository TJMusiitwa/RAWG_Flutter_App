part of swagger.api;

class Twitch {
  int id = null;

  int externalId = null;

  String name = null;

  String description = null;

  DateTime created = null;

  DateTime published = null;

  String thumbnail = null;

  int viewCount = null;

  String language = null;

  Twitch();

  @override
  String toString() {
    return 'Twitch[id=$id, externalId=$externalId, name=$name, description=$description, created=$created, published=$published, thumbnail=$thumbnail, viewCount=$viewCount, language=$language, ]';
  }

  Twitch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    externalId = json['external_id'];
    name = json['name'];
    description = json['description'];
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    published =
        json['published'] == null ? null : DateTime.parse(json['published']);
    thumbnail = json['thumbnail'];
    viewCount = json['view_count'];
    language = json['language'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'external_id': externalId,
      'name': name,
      'description': description,
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'published': published == null ? '' : published.toUtc().toIso8601String(),
      'thumbnail': thumbnail,
      'view_count': viewCount,
      'language': language
    };
  }

  static List<Twitch> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Twitch>()
        : json.map((value) => new Twitch.fromJson(value)).toList();
  }

  static Map<String, Twitch> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Twitch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Twitch.fromJson(value));
    }
    return map;
  }
}
