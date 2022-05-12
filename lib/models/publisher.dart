// To parse this JSON data, do
//
//     final publishers = publishersFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'publisher.g.dart';

Publisher publishersFromJson(String str) =>
    Publisher.fromJson(json.decode(str));

String publishersToJson(Publisher data) => json.encode(data.toJson());

@JsonSerializable(explicitToJson: true)
class Publisher {
  Publisher({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int? count;
  String? next;
  dynamic previous;
  List<PublisherResult>? results;

  factory Publisher.fromJson(Map<String, dynamic> json) =>
      _$PublisherFromJson(json);

  Map<String, dynamic> toJson() => _$PublisherToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PublisherResult {
  PublisherResult({
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

  factory PublisherResult.fromJson(Map<String, dynamic> json) =>
      _$PublisherResultFromJson(json);

  Map<String, dynamic> toJson() => _$PublisherResultToJson(this);
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
