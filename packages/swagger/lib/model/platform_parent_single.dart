part of swagger.api;

class PlatformParentSingle {
  int id = null;

  String name = null;

  String slug = null;

  List<Platform> platforms = [];

  PlatformParentSingle();

  @override
  String toString() {
    return 'PlatformParentSingle[id=$id, name=$name, slug=$slug, platforms=$platforms, ]';
  }

  PlatformParentSingle.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    platforms = Platform.listFromJson(json['platforms']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'slug': slug, 'platforms': platforms};
  }

  static List<PlatformParentSingle> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PlatformParentSingle>()
        : json
            .map((value) => new PlatformParentSingle.fromJson(value))
            .toList();
  }

  static Map<String, PlatformParentSingle> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PlatformParentSingle>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PlatformParentSingle.fromJson(value));
    }
    return map;
  }
}
