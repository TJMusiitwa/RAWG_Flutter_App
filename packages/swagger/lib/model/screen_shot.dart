part of swagger.api;

class ScreenShot {
  int id = null;

/* An image file with size up to 20 MB. */
  String image = null;

/* Set image as hidden or visible. */
  bool hidden = null;

  int width = null;

  int height = null;

  ScreenShot();

  @override
  String toString() {
    return 'ScreenShot[id=$id, image=$image, hidden=$hidden, width=$width, height=$height, ]';
  }

  ScreenShot.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    image = json['image'];
    hidden = json['hidden'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'hidden': hidden,
      'width': width,
      'height': height
    };
  }

  static List<ScreenShot> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ScreenShot>()
        : json.map((value) => new ScreenShot.fromJson(value)).toList();
  }

  static Map<String, ScreenShot> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScreenShot>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ScreenShot.fromJson(value));
    }
    return map;
  }
}
