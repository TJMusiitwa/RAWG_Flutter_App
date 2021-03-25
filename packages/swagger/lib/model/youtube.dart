part of swagger.api;

class Youtube {
  int id = null;

  String externalId = null;

  String channelId = null;

  String channelTitle = null;

  String name = null;

  String description = null;

  DateTime created = null;

  int viewCount = null;

  int commentsCount = null;

  int likeCount = null;

  int dislikeCount = null;

  int favoriteCount = null;

  Object thumbnails = null;

  Youtube();

  @override
  String toString() {
    return 'Youtube[id=$id, externalId=$externalId, channelId=$channelId, channelTitle=$channelTitle, name=$name, description=$description, created=$created, viewCount=$viewCount, commentsCount=$commentsCount, likeCount=$likeCount, dislikeCount=$dislikeCount, favoriteCount=$favoriteCount, thumbnails=$thumbnails, ]';
  }

  Youtube.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    externalId = json['external_id'];
    channelId = json['channel_id'];
    channelTitle = json['channel_title'];
    name = json['name'];
    description = json['description'];
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    viewCount = json['view_count'];
    commentsCount = json['comments_count'];
    likeCount = json['like_count'];
    dislikeCount = json['dislike_count'];
    favoriteCount = json['favorite_count'];
    thumbnails = json['thumbnails'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'external_id': externalId,
      'channel_id': channelId,
      'channel_title': channelTitle,
      'name': name,
      'description': description,
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'view_count': viewCount,
      'comments_count': commentsCount,
      'like_count': likeCount,
      'dislike_count': dislikeCount,
      'favorite_count': favoriteCount,
      'thumbnails': thumbnails
    };
  }

  static List<Youtube> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Youtube>()
        : json.map((value) => new Youtube.fromJson(value)).toList();
  }

  static Map<String, Youtube> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Youtube>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Youtube.fromJson(value));
    }
    return map;
  }
}
