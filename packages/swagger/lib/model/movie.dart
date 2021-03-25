part of swagger.api;

class Movie {
  int id = null;

  String name = null;

  String preview = null;

  Object data;

  Movie();

  @override
  String toString() {
    return 'Movie[id=$id, name=$name, preview=$preview, data=$data, ]';
  }

  Movie.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    preview = json['preview'];
    data = json['data'];
    //data = new Object.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'preview': preview, 'data': data};
  }

  static List<Movie> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Movie>()
        : json.map((value) => new Movie.fromJson(value)).toList();
  }

  static Map<String, Movie> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Movie>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Movie.fromJson(value));
    }
    return map;
  }
}
