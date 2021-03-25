part of swagger.api;

class Reddit {
  int id = null;

  String name = null;

  String text = null;

  String image = null;

  String url = null;

  String username = null;

  String usernameUrl = null;

  DateTime created = null;

  Reddit();

  @override
  String toString() {
    return 'Reddit[id=$id, name=$name, text=$text, image=$image, url=$url, username=$username, usernameUrl=$usernameUrl, created=$created, ]';
  }

  Reddit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    text = json['text'];
    image = json['image'];
    url = json['url'];
    username = json['username'];
    usernameUrl = json['username_url'];
    created = json['created'] == null ? null : DateTime.parse(json['created']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'text': text,
      'image': image,
      'url': url,
      'username': username,
      'username_url': usernameUrl,
      'created': created == null ? '' : created.toUtc().toIso8601String()
    };
  }

  static List<Reddit> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Reddit>()
        : json.map((value) => new Reddit.fromJson(value)).toList();
  }

  static Map<String, Reddit> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Reddit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Reddit.fromJson(value));
    }
    return map;
  }
}
