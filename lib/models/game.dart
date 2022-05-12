// To parse this JSON data, do
//
//     final games = gamesFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'game.g.dart';

Game gamesFromJson(String str) => Game.fromJson(json.decode(str));

String gamesToJson(Game data) => json.encode(data.toJson());

@JsonSerializable(explicitToJson: true)
class Game {
  Game({
    this.count,
    this.next,
    this.previous,
    this.results,
    this.description,
    this.filters,
  });

  int? count;
  String? next;
  dynamic previous;
  List<GameResult>? results;
  String? description;
  Filters? filters;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  Map<String, dynamic> toJson() => _$GameToJson(this);
}

@JsonSerializable()
class Filters {
  Filters({
    this.years,
  });

  List<FiltersYear>? years;

  factory Filters.fromJson(Map<String, dynamic> json) =>
      _$FiltersFromJson(json);

  Map<String, dynamic> toJson() => _$FiltersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FiltersYear {
  FiltersYear({
    this.from,
    this.to,
    this.filter,
    this.decade,
    this.years,
    this.nofollow,
    this.count,
  });

  int? from;
  int? to;
  String? filter;
  int? decade;
  List<YearYear>? years;
  bool? nofollow;
  int? count;

  factory FiltersYear.fromJson(Map<String, dynamic> json) =>
      _$FiltersYearFromJson(json);

  Map<String, dynamic> toJson() => _$FiltersYearToJson(this);
}

@JsonSerializable()
class YearYear {
  YearYear({
    this.year,
    this.count,
    this.nofollow,
  });

  int? year;
  int? count;
  bool? nofollow;

  factory YearYear.fromJson(Map<String, dynamic> json) =>
      _$YearYearFromJson(json);

  Map<String, dynamic> toJson() => _$YearYearToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameResult {
  GameResult({
    this.id,
    this.slug,
    this.name,
    this.released,
    this.tba,
    this.backgroundImage,
    this.rating,
    this.ratingTop,
    this.ratings,
    this.ratingsCount,
    this.reviewsTextCount,
    this.added,
    this.addedByStatus,
    this.metacritic,
    this.playtime,
    this.suggestionsCount,
    this.userGame,
    this.reviewsCount,
    this.saturatedColor,
    this.dominantColor,
    this.platforms,
    this.parentPlatforms,
    this.genres,
    this.stores,
    this.clip,
    this.tags,
    this.shortScreenshots,
  });

  int? id;
  String? slug;
  String? name;
  DateTime? released;
  bool? tba;
  String? backgroundImage;
  double? rating;
  int? ratingTop;
  List<Rating>? ratings;
  int? ratingsCount;
  int? reviewsTextCount;
  int? added;
  AddedByStatus? addedByStatus;
  int? metacritic;
  int? playtime;
  int? suggestionsCount;
  dynamic userGame;
  int? reviewsCount;
  String? saturatedColor;
  String? dominantColor;
  List<PlatformElement>? platforms;
  List<ParentPlatform>? parentPlatforms;
  List<Genre>? genres;
  List<Store>? stores;
  Clip? clip;
  List<Genre>? tags;
  List<ShortScreenshot>? shortScreenshots;

  factory GameResult.fromJson(Map<String, dynamic> json) =>
      _$GameResultFromJson(json);

  Map<String, dynamic> toJson() => _$GameResultToJson(this);
}

@JsonSerializable()
class AddedByStatus {
  AddedByStatus({
    this.yet,
    this.owned,
    this.beaten,
    this.toplay,
    this.dropped,
    this.playing,
  });

  int? yet;
  int? owned;
  int? beaten;
  int? toplay;
  int? dropped;
  int? playing;

  factory AddedByStatus.fromJson(Map<String, dynamic> json) =>
      _$AddedByStatusFromJson(json);

  Map<String, dynamic> toJson() => _$AddedByStatusToJson(this);
}

@JsonSerializable()
class Clip {
  Clip({
    this.clip,
    this.clips,
    this.video,
    this.preview,
  });

  String? clip;
  Clips? clips;
  String? video;
  String? preview;

  factory Clip.fromJson(Map<String, dynamic> json) => _$ClipFromJson(json);

  Map<String, dynamic> toJson() => _$ClipToJson(this);
}

@JsonSerializable()
class Clips {
  Clips({
    this.the320,
    this.the640,
    this.full,
  });

  String? the320;
  String? the640;
  String? full;

  factory Clips.fromJson(Map<String, dynamic> json) => _$ClipsFromJson(json);

  Map<String, dynamic> toJson() => _$ClipsToJson(this);
}

@JsonSerializable()
class Genre {
  Genre({
    this.id,
    this.name,
    this.slug,
    this.gamesCount,
    this.imageBackground,
    this.domain,
    this.language,
  });

  int? id;
  String? name;
  String? slug;
  int? gamesCount;
  String? imageBackground;
  String? domain;
  String? language;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  Map<String, dynamic> toJson() => _$GenreToJson(this);
}

@JsonSerializable()
class ParentPlatform {
  ParentPlatform({
    this.platform,
  });

  ParentPlatformPlatform? platform;

  factory ParentPlatform.fromJson(Map<String, dynamic> json) =>
      _$ParentPlatformFromJson(json);

  Map<String, dynamic> toJson() => _$ParentPlatformToJson(this);
}

@JsonSerializable()
class ParentPlatformPlatform {
  ParentPlatformPlatform({
    this.id,
    this.name,
    this.slug,
  });

  int? id;
  String? name;
  String? slug;

  factory ParentPlatformPlatform.fromJson(Map<String, dynamic> json) =>
      _$ParentPlatformPlatformFromJson(json);

  Map<String, dynamic> toJson() => _$ParentPlatformPlatformToJson(this);
}

@JsonSerializable()
class PlatformElement {
  PlatformElement({
    this.platform,
    this.releasedAt,
    this.requirementsEn,
    this.requirementsRu,
  });

  PlatformPlatform? platform;
  DateTime? releasedAt;
  Requirements? requirementsEn;
  Requirements? requirementsRu;

  factory PlatformElement.fromJson(Map<String, dynamic> json) =>
      _$PlatformElementFromJson(json);

  Map<String, dynamic> toJson() => _$PlatformElementToJson(this);
}

@JsonSerializable()
class PlatformPlatform {
  PlatformPlatform({
    this.id,
    this.name,
    this.slug,
    this.image,
    this.yearEnd,
    this.yearStart,
    this.gamesCount,
    this.imageBackground,
  });

  int? id;
  String? name;
  String? slug;
  dynamic image;
  dynamic yearEnd;
  int? yearStart;
  int? gamesCount;
  String? imageBackground;

  factory PlatformPlatform.fromJson(Map<String, dynamic> json) =>
      _$PlatformPlatformFromJson(json);

  Map<String, dynamic> toJson() => _$PlatformPlatformToJson(this);
}

@JsonSerializable()
class Requirements {
  Requirements({
    this.minimum,
    this.recommended,
  });

  String? minimum;
  String? recommended;

  factory Requirements.fromJson(Map<String, dynamic> json) =>
      _$RequirementsFromJson(json);

  Map<String, dynamic> toJson() => _$RequirementsToJson(this);
}

@JsonSerializable()
class Rating {
  Rating({
    this.id,
    this.title,
    this.count,
    this.percent,
  });

  int? id;
  String? title;
  int? count;
  double? percent;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);

  Map<String, dynamic> toJson() => _$RatingToJson(this);
}

@JsonSerializable()
class ShortScreenshot {
  ShortScreenshot({
    this.id,
    this.image,
  });

  int? id;
  String? image;

  factory ShortScreenshot.fromJson(Map<String, dynamic> json) =>
      _$ShortScreenshotFromJson(json);

  Map<String, dynamic> toJson() => _$ShortScreenshotToJson(this);
}

@JsonSerializable()
class Store {
  Store({
    this.id,
    this.store,
    this.urlEn,
    this.urlRu,
  });

  int? id;
  Genre? store;
  String? urlEn;
  String? urlRu;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  Map<String, dynamic> toJson() => _$StoreToJson(this);
}
