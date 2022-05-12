// To parse this JSON data, do
//
//     final creators = creatorsFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'creator.g.dart';

Creator creatorsFromJson(String str) => Creator.fromJson(json.decode(str));

String creatorsToJson(Creator data) => json.encode(data.toJson());

@JsonSerializable(explicitToJson: true)
class Creator {
  Creator({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int? count;
  String? next;
  dynamic previous;
  List<CreatorResult>? results;

  factory Creator.fromJson(Map<String, dynamic> json) =>
      _$CreatorFromJson(json);

  Map<String, dynamic> toJson() => _$CreatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreatorResult {
  CreatorResult({
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

  factory CreatorResult.fromJson(Map<String, dynamic> json) =>
      _$CreatorResultFromJson(json);

  Map<String, dynamic> toJson() => _$CreatorResultToJson(this);
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
