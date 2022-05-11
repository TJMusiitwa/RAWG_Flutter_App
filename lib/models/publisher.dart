// To parse this JSON data, do
//
//     final publishers = publishersFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'publisher.g.dart';

Publishers publishersFromJson(String str) =>
    Publishers.fromJson(json.decode(str));

String publishersToJson(Publishers data) => json.encode(data.toJson());

@JsonSerializable(explicitToJson: true)
class Publishers {
  Publishers({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int? count;
  String? next;
  dynamic previous;
  List<Result>? results;

  factory Publishers.fromJson(Map<String, dynamic> json) =>
      _$PublishersFromJson(json);

  Map<String, dynamic> toJson() => _$PublishersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Result {
  Result({
    this.id,
    this.name,
    this.slug,
    this.gamesCount,
    this.imageBackground,
    this.games,
  });

  int? id;
  String? name;
  String? slug;
  int? gamesCount;
  String? imageBackground;
  List<Game>? games;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
