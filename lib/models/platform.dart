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
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int count;
  String next;
  dynamic previous;
  List<Result> results;

  factory Platforms.fromJson(Map<String, dynamic> json) =>
      _$PlatformsFromJson(json);

  Map<String, dynamic> toJson() => _$PlatformsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Result {
  Result({
    this.id,
    this.name,
    this.slug,
    this.gamesCount,
    this.imageBackground,
    this.image,
    this.yearStart,
    this.yearEnd,
    this.games,
  });

  int id;
  String name;
  String slug;
  int gamesCount;
  String imageBackground;
  dynamic image;
  int yearStart;
  dynamic yearEnd;
  List<Game> games;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

@JsonSerializable()
class Game {
  Game({
    this.id,
    this.slug,
    this.name,
    this.added,
  });

  int id;
  String slug;
  String name;
  int added;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  Map<String, dynamic> toJson() => _$GameToJson(this);
}
