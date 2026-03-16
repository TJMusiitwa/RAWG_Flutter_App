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
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  int? count;
  String? next;
  dynamic previous;
  List<Result> results;

  factory Creators.fromJson(Map<String, dynamic> json) =>
      _$CreatorsFromJson(json);

  Map<String, dynamic> toJson() => _$CreatorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Result {
  Result({
    required this.id,
    required this.name,
    required this.slug,
    required this.image,
    required this.imageBackground,
    required this.gamesCount,
    required this.positions,
    required this.games,
  });

  int? id;
  String? name;
  String? slug;
  String? image;
  String? imageBackground;
  int? gamesCount;
  List<Game> positions;
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
