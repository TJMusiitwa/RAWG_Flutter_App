part of swagger.api;

class Person {
  int id = null;

  String name = null;

  String slug = null;

  String image = null;

  String imageBackground = null;

  int gamesCount = null;

  Person();

  @override
  String toString() {
    return 'Person[id=$id, name=$name, slug=$slug, image=$image, imageBackground=$imageBackground, gamesCount=$gamesCount, ]';
  }

  Person.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    imageBackground = json['image_background'];
    gamesCount = json['games_count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'image': image,
      'image_background': imageBackground,
      'games_count': gamesCount
    };
  }

  static List<Person> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Person>()
        : json.map((value) => new Person.fromJson(value)).toList();
  }

  static Map<String, Person> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Person>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Person.fromJson(value));
    }
    return map;
  }
}
