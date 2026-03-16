// To parse this JSON data, do
//
//     final stores = storesFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'store.g.dart';

Stores storesFromJson(String str) => Stores.fromJson(json.decode(str));

String storesToJson(Stores data) => json.encode(data.toJson());

@JsonSerializable(explicitToJson: true)
class Stores {
  Stores({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  int? count;
  dynamic next;
  dynamic previous;
  List<Result> results;

  factory Stores.fromJson(Map<String, dynamic> json) => _$StoresFromJson(json);

  Map<String, dynamic> toJson() => _$StoresToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Result {
  Result({
    required this.id,
    required this.name,
    required this.domain,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
    required this.games,
  });

  int? id;
  String? name;
  String? domain;
  String? slug;
  int? gamesCount;
  String? imageBackground;
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
