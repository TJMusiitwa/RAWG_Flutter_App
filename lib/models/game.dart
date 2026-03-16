// To parse this JSON data, do
//
//     final games = gamesFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'game.g.dart';

Games gamesFromJson(String str) => Games.fromJson(json.decode(str));

String gamesToJson(Games data) => json.encode(data.toJson());

@JsonSerializable(explicitToJson: true)
class Games {
  Games({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
    required this.description,
    required this.filters,
  });

  int? count;
  String? next;
  dynamic previous;
  List<Result> results;
  String? description;
  Filters? filters;

  factory Games.fromJson(Map<String, dynamic> json) => _$GamesFromJson(json);

  Map<String, dynamic> toJson() => _$GamesToJson(this);
}

@JsonSerializable()
class Filters {
  Filters({
    required this.years,
  });

  List<FiltersYear> years;

  factory Filters.fromJson(Map<String, dynamic> json) =>
      _$FiltersFromJson(json);

  Map<String, dynamic> toJson() => _$FiltersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FiltersYear {
  FiltersYear({
    required this.from,
    required this.to,
    required this.filter,
    required this.decade,
    required this.years,
    required this.nofollow,
    required this.count,
  });

  int? from;
  int? to;
  String? filter;
  int? decade;
  List<YearYear> years;
  bool? nofollow;
  int? count;

  factory FiltersYear.fromJson(Map<String, dynamic> json) =>
      _$FiltersYearFromJson(json);

  Map<String, dynamic> toJson() => _$FiltersYearToJson(this);
}

@JsonSerializable()
class YearYear {
  YearYear({
    required this.year,
    required this.count,
    required this.nofollow,
  });

  int? year;
  int? count;
  bool? nofollow;

  factory YearYear.fromJson(Map<String, dynamic> json) =>
      _$YearYearFromJson(json);

  Map<String, dynamic> toJson() => _$YearYearToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Result {
  Result({
    required this.id,
    required this.slug,
    required this.name,
    required this.released,
    required this.tba,
    required this.backgroundImage,
    required this.rating,
    required this.ratingTop,
    required this.ratings,
    required this.ratingsCount,
    required this.reviewsTextCount,
    required this.added,
    required this.addedByStatus,
    required this.metacritic,
    required this.playtime,
    required this.suggestionsCount,
    required this.userGame,
    required this.reviewsCount,
    required this.saturatedColor,
    required this.dominantColor,
    required this.platforms,
    required this.parentPlatforms,
    required this.genres,
    required this.stores,
    required this.clip,
    required this.tags,
    required this.shortScreenshots,
  });

  int? id;
  String? slug;
  String? name;
  DateTime? released;
  bool? tba;
  String? backgroundImage;
  double? rating;
  int? ratingTop;
  List<Rating> ratings;
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
  List<PlatformElement> platforms;
  List<ParentPlatform> parentPlatforms;
  List<Genre> genres;
  List<Store> stores;
  Clip? clip;
  List<Genre> tags;
  List<ShortScreenshot> shortScreenshots;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

@JsonSerializable()
class AddedByStatus {
  AddedByStatus({
    required this.yet,
    required this.owned,
    required this.beaten,
    required this.toplay,
    required this.dropped,
    required this.playing,
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
    required this.clip,
    required this.clips,
    required this.video,
    required this.preview,
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
    required this.the320,
    required this.the640,
    required this.full,
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
    required this.id,
    required this.name,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
    required this.domain,
    required this.language,
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
    required this.platform,
  });

  ParentPlatformPlatform? platform;

  factory ParentPlatform.fromJson(Map<String, dynamic> json) =>
      _$ParentPlatformFromJson(json);

  Map<String, dynamic> toJson() => _$ParentPlatformToJson(this);
}

@JsonSerializable()
class ParentPlatformPlatform {
  ParentPlatformPlatform({
    required this.id,
    required this.name,
    required this.slug,
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
    required this.platform,
    required this.releasedAt,
    required this.requirementsEn,
    required this.requirementsRu,
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
    required this.id,
    required this.name,
    required this.slug,
    required this.image,
    required this.yearEnd,
    required this.yearStart,
    required this.gamesCount,
    required this.imageBackground,
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
    required this.minimum,
    required this.recommended,
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
    required this.id,
    required this.title,
    required this.count,
    required this.percent,
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
    required this.id,
    required this.image,
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
    required this.id,
    required this.store,
    required this.urlEn,
    required this.urlRu,
  });

  int? id;
  Genre? store;
  String? urlEn;
  String? urlRu;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  Map<String, dynamic> toJson() => _$StoreToJson(this);
}
