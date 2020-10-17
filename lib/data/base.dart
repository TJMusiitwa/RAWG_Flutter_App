import 'dart:io';

import 'package:http/http.dart' as http;

class HttpService {
  static const String appUserAgent = "rawgFlutterApp";

  final String rawgAPIURL = "https://api.rawg.io/api";

  Future<dynamic> getCreators() async {
    http.Response creatorResponse = await http.get("$rawgAPIURL/creators",
        headers: {HttpHeaders.userAgentHeader: appUserAgent});

    if (creatorResponse.statusCode == 200) {
      return creatorResponse.body;
    } else {
      print(creatorResponse.statusCode);
      throw Exception("Can't fetch creators data");
    }
  }

  Future<dynamic> getGames() async {
    http.Response gameResponse = await http.get("$rawgAPIURL/games",
        headers: {HttpHeaders.userAgentHeader: appUserAgent});

    if (gameResponse.statusCode == 200) {
      return gameResponse.body;
    } else {
      print(gameResponse.statusCode);
      throw Exception("Can't fetch games data");
    }
  }

  Future<dynamic> getPlatforms() async {
    http.Response platformResponse = await http.get("$rawgAPIURL/platforms",
        headers: {HttpHeaders.userAgentHeader: appUserAgent});

    if (platformResponse.statusCode == 200) {
      return platformResponse.body;
    } else {
      print(platformResponse.statusCode);
      throw Exception("Can't fetch platforms data");
    }
  }

  Future<dynamic> getPublishers() async {
    http.Response publisherResponse = await http.get("$rawgAPIURL/publishers",
        headers: {HttpHeaders.userAgentHeader: appUserAgent});

    if (publisherResponse.statusCode == 200) {
      return publisherResponse.body;
    } else {
      print(publisherResponse.statusCode);
      throw Exception("Can't fetch publishers data");
    }
  }

  Future<dynamic> getStores() async {
    http.Response storeResponse = await http.get("$rawgAPIURL/stores",
        headers: {HttpHeaders.userAgentHeader: appUserAgent});

    if (storeResponse.statusCode == 200) {
      return storeResponse.body;
    } else {
      print(storeResponse.statusCode);
      throw Exception("Can't fetch stores data");
    }
  }
}
