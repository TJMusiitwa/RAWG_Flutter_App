// To parse this JSON data, do
//
//     final platforms = platformsFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'platform.g.dart';

Platforms platformsFromJson(String str) => Platforms.fromJson(json.decode(str));

String platformsToJson(Platforms data) => json.encode(data.toJson());

@JsonSerializable(explicitToJson: true)
class Platforms {
  Platforms({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  int? count;
  String? next;
  dynamic previous;
  List<Result> results;

  factory Platforms.fromJson(Map<String, dynamic> json) =>
      _$PlatformsFromJson(json);

  Map<String, dynamic> toJson() => _$PlatformsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Result {
  Result({
    required this.id,
    required this.name,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
    required this.image,
    required this.yearStart,
    required this.yearEnd,
    required this.games,
  });

  int? id;
  String? name;
  String? slug;
  int? gamesCount;
  String? imageBackground;
  dynamic image;
  int? yearStart;
  dynamic yearEnd;
  List<Game> games;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

@JsonSerializable()
class Game {
  Game({
    required this.id,
    required this.slug,
    required this.name,
    required this.added,
  });

  int? id;
  String? slug;
  String? name;
  int? added;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  Map<String, dynamic> toJson() => _$GameToJson(this);
}
