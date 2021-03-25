part of swagger.api;

class ParentAchievement {
  int id = null;

  String name = null;

  String description = null;

  String image = null;

  String percent = null;

  ParentAchievement();

  @override
  String toString() {
    return 'ParentAchievement[id=$id, name=$name, description=$description, image=$image, percent=$percent, ]';
  }

  ParentAchievement.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    percent = json['percent'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'image': image,
      'percent': percent
    };
  }

  static List<ParentAchievement> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ParentAchievement>()
        : json.map((value) => new ParentAchievement.fromJson(value)).toList();
  }

  static Map<String, ParentAchievement> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ParentAchievement>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ParentAchievement.fromJson(value));
    }
    return map;
  }
}
