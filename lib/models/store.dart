// To parse this JSON data, do
//
//     final stores = storesFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'store.g.dart';

Store storesFromJson(String str) => Store.fromJson(json.decode(str));

String storesToJson(Store data) => json.encode(data.toJson());

@JsonSerializable(explicitToJson: true)
class Store {
  Store({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int? count;
  dynamic next;
  dynamic previous;
  List<StoreResult>? results;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  Map<String, dynamic> toJson() => _$StoreToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StoreResult {
  StoreResult({
    this.id,
    this.name,
    this.domain,
    this.slug,
    this.gamesCount,
    this.imageBackground,
    this.games,
  });

  int? id;
  String? name;
  String? domain;
  String? slug;
  int? gamesCount;
  String? imageBackground;
  List<Game>? games;

  factory StoreResult.fromJson(Map<String, dynamic> json) =>
      _$StoreResultFromJson(json);

  Map<String, dynamic> toJson() => _$StoreResultToJson(this);
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
