// To parse this JSON data, do
//
//     final platforms = platformsFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'platform.g.dart';

Platform platformsFromJson(String str) => Platform.fromJson(json.decode(str));

String platformsToJson(Platform data) => json.encode(data.toJson());

@JsonSerializable(explicitToJson: true)
class Platform {
  Platform({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int? count;
  String? next;
  dynamic previous;
  List<PlatformResult>? results;

  factory Platform.fromJson(Map<String, dynamic> json) =>
      _$PlatformFromJson(json);

  Map<String, dynamic> toJson() => _$PlatformToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlatformResult {
  PlatformResult({
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

  int? id;
  String? name;
  String? slug;
  int? gamesCount;
  String? imageBackground;
  dynamic image;
  int? yearStart;
  dynamic yearEnd;
  List<Game>? games;

  factory PlatformResult.fromJson(Map<String, dynamic> json) =>
      _$PlatformResultFromJson(json);

  Map<String, dynamic> toJson() => _$PlatformResultToJson(this);
}

@JsonSerializable()
class Game {
  Game({
    this.id,
    this.slug,
    this.name,
    this.added,
  });

  int? id;
  String? slug;
  String? name;
  int? added;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  Map<String, dynamic> toJson() => _$GameToJson(this);
}
