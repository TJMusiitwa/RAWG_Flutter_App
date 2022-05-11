// To parse this JSON data, do
//
//     final creators = creatorsFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'creator.g.dart';

Creators creatorsFromJson(String str) => Creators.fromJson(json.decode(str));

String creatorsToJson(Creators data) => json.encode(data.toJson());

@JsonSerializable(explicitToJson: true)
class Creators {
  Creators({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int? count;
  String? next;
  dynamic previous;
  List<Result>? results;

  factory Creators.fromJson(Map<String, dynamic> json) =>
      _$CreatorsFromJson(json);

  Map<String, dynamic> toJson() => _$CreatorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Result {
  Result({
    this.id,
    this.name,
    this.slug,
    this.image,
    this.imageBackground,
    this.gamesCount,
    this.positions,
    this.games,
  });

  int? id;
  String? name;
  String? slug;
  String? image;
  String? imageBackground;
  int? gamesCount;
  List<Game>? positions;
  List<Game>? games;

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

  int? id;
  String? slug;
  String? name;
  int? added;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  Map<String, dynamic> toJson() => _$GameToJson(this);
}
