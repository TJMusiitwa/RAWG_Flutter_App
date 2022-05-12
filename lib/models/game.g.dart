// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Game _$GameFromJson(Map<String, dynamic> json) => Game(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'],
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => GameResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      filters: json['filters'] == null
          ? null
          : Filters.fromJson(json['filters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results?.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'filters': instance.filters?.toJson(),
    };

Filters _$FiltersFromJson(Map<String, dynamic> json) => Filters(
      years: (json['years'] as List<dynamic>?)
          ?.map((e) => FiltersYear.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FiltersToJson(Filters instance) => <String, dynamic>{
      'years': instance.years,
    };

FiltersYear _$FiltersYearFromJson(Map<String, dynamic> json) => FiltersYear(
      from: json['from'] as int?,
      to: json['to'] as int?,
      filter: json['filter'] as String?,
      decade: json['decade'] as int?,
      years: (json['years'] as List<dynamic>?)
          ?.map((e) => YearYear.fromJson(e as Map<String, dynamic>))
          .toList(),
      nofollow: json['nofollow'] as bool?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$FiltersYearToJson(FiltersYear instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'filter': instance.filter,
      'decade': instance.decade,
      'years': instance.years?.map((e) => e.toJson()).toList(),
      'nofollow': instance.nofollow,
      'count': instance.count,
    };

YearYear _$YearYearFromJson(Map<String, dynamic> json) => YearYear(
      year: json['year'] as int?,
      count: json['count'] as int?,
      nofollow: json['nofollow'] as bool?,
    );

Map<String, dynamic> _$YearYearToJson(YearYear instance) => <String, dynamic>{
      'year': instance.year,
      'count': instance.count,
      'nofollow': instance.nofollow,
    };

GameResult _$GameResultFromJson(Map<String, dynamic> json) => GameResult(
      id: json['id'] as int?,
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      released: json['released'] == null
          ? null
          : DateTime.parse(json['released'] as String),
      tba: json['tba'] as bool?,
      backgroundImage: json['backgroundImage'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      ratingTop: json['ratingTop'] as int?,
      ratings: (json['ratings'] as List<dynamic>?)
          ?.map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
      ratingsCount: json['ratingsCount'] as int?,
      reviewsTextCount: json['reviewsTextCount'] as int?,
      added: json['added'] as int?,
      addedByStatus: json['addedByStatus'] == null
          ? null
          : AddedByStatus.fromJson(
              json['addedByStatus'] as Map<String, dynamic>),
      metacritic: json['metacritic'] as int?,
      playtime: json['playtime'] as int?,
      suggestionsCount: json['suggestionsCount'] as int?,
      userGame: json['userGame'],
      reviewsCount: json['reviewsCount'] as int?,
      saturatedColor: json['saturatedColor'] as String?,
      dominantColor: json['dominantColor'] as String?,
      platforms: (json['platforms'] as List<dynamic>?)
          ?.map((e) => PlatformElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      parentPlatforms: (json['parentPlatforms'] as List<dynamic>?)
          ?.map((e) => ParentPlatform.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      stores: (json['stores'] as List<dynamic>?)
          ?.map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList(),
      clip: json['clip'] == null
          ? null
          : Clip.fromJson(json['clip'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      shortScreenshots: (json['shortScreenshots'] as List<dynamic>?)
          ?.map((e) => ShortScreenshot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameResultToJson(GameResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'released': instance.released?.toIso8601String(),
      'tba': instance.tba,
      'backgroundImage': instance.backgroundImage,
      'rating': instance.rating,
      'ratingTop': instance.ratingTop,
      'ratings': instance.ratings?.map((e) => e.toJson()).toList(),
      'ratingsCount': instance.ratingsCount,
      'reviewsTextCount': instance.reviewsTextCount,
      'added': instance.added,
      'addedByStatus': instance.addedByStatus?.toJson(),
      'metacritic': instance.metacritic,
      'playtime': instance.playtime,
      'suggestionsCount': instance.suggestionsCount,
      'userGame': instance.userGame,
      'reviewsCount': instance.reviewsCount,
      'saturatedColor': instance.saturatedColor,
      'dominantColor': instance.dominantColor,
      'platforms': instance.platforms?.map((e) => e.toJson()).toList(),
      'parentPlatforms':
          instance.parentPlatforms?.map((e) => e.toJson()).toList(),
      'genres': instance.genres?.map((e) => e.toJson()).toList(),
      'stores': instance.stores?.map((e) => e.toJson()).toList(),
      'clip': instance.clip?.toJson(),
      'tags': instance.tags?.map((e) => e.toJson()).toList(),
      'shortScreenshots':
          instance.shortScreenshots?.map((e) => e.toJson()).toList(),
    };

AddedByStatus _$AddedByStatusFromJson(Map<String, dynamic> json) =>
    AddedByStatus(
      yet: json['yet'] as int?,
      owned: json['owned'] as int?,
      beaten: json['beaten'] as int?,
      toplay: json['toplay'] as int?,
      dropped: json['dropped'] as int?,
      playing: json['playing'] as int?,
    );

Map<String, dynamic> _$AddedByStatusToJson(AddedByStatus instance) =>
    <String, dynamic>{
      'yet': instance.yet,
      'owned': instance.owned,
      'beaten': instance.beaten,
      'toplay': instance.toplay,
      'dropped': instance.dropped,
      'playing': instance.playing,
    };

Clip _$ClipFromJson(Map<String, dynamic> json) => Clip(
      clip: json['clip'] as String?,
      clips: json['clips'] == null
          ? null
          : Clips.fromJson(json['clips'] as Map<String, dynamic>),
      video: json['video'] as String?,
      preview: json['preview'] as String?,
    );

Map<String, dynamic> _$ClipToJson(Clip instance) => <String, dynamic>{
      'clip': instance.clip,
      'clips': instance.clips,
      'video': instance.video,
      'preview': instance.preview,
    };

Clips _$ClipsFromJson(Map<String, dynamic> json) => Clips(
      the320: json['the320'] as String?,
      the640: json['the640'] as String?,
      full: json['full'] as String?,
    );

Map<String, dynamic> _$ClipsToJson(Clips instance) => <String, dynamic>{
      'the320': instance.the320,
      'the640': instance.the640,
      'full': instance.full,
    };

Genre _$GenreFromJson(Map<String, dynamic> json) => Genre(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      gamesCount: json['gamesCount'] as int?,
      imageBackground: json['imageBackground'] as String?,
      domain: json['domain'] as String?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$GenreToJson(Genre instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'gamesCount': instance.gamesCount,
      'imageBackground': instance.imageBackground,
      'domain': instance.domain,
      'language': instance.language,
    };

ParentPlatform _$ParentPlatformFromJson(Map<String, dynamic> json) =>
    ParentPlatform(
      platform: json['platform'] == null
          ? null
          : ParentPlatformPlatform.fromJson(
              json['platform'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ParentPlatformToJson(ParentPlatform instance) =>
    <String, dynamic>{
      'platform': instance.platform,
    };

ParentPlatformPlatform _$ParentPlatformPlatformFromJson(
        Map<String, dynamic> json) =>
    ParentPlatformPlatform(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$ParentPlatformPlatformToJson(
        ParentPlatformPlatform instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

PlatformElement _$PlatformElementFromJson(Map<String, dynamic> json) =>
    PlatformElement(
      platform: json['platform'] == null
          ? null
          : PlatformPlatform.fromJson(json['platform'] as Map<String, dynamic>),
      releasedAt: json['releasedAt'] == null
          ? null
          : DateTime.parse(json['releasedAt'] as String),
      requirementsEn: json['requirementsEn'] == null
          ? null
          : Requirements.fromJson(
              json['requirementsEn'] as Map<String, dynamic>),
      requirementsRu: json['requirementsRu'] == null
          ? null
          : Requirements.fromJson(
              json['requirementsRu'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlatformElementToJson(PlatformElement instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'releasedAt': instance.releasedAt?.toIso8601String(),
      'requirementsEn': instance.requirementsEn,
      'requirementsRu': instance.requirementsRu,
    };

PlatformPlatform _$PlatformPlatformFromJson(Map<String, dynamic> json) =>
    PlatformPlatform(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      image: json['image'],
      yearEnd: json['yearEnd'],
      yearStart: json['yearStart'] as int?,
      gamesCount: json['gamesCount'] as int?,
      imageBackground: json['imageBackground'] as String?,
    );

Map<String, dynamic> _$PlatformPlatformToJson(PlatformPlatform instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
      'yearEnd': instance.yearEnd,
      'yearStart': instance.yearStart,
      'gamesCount': instance.gamesCount,
      'imageBackground': instance.imageBackground,
    };

Requirements _$RequirementsFromJson(Map<String, dynamic> json) => Requirements(
      minimum: json['minimum'] as String?,
      recommended: json['recommended'] as String?,
    );

Map<String, dynamic> _$RequirementsToJson(Requirements instance) =>
    <String, dynamic>{
      'minimum': instance.minimum,
      'recommended': instance.recommended,
    };

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating(
      id: json['id'] as int?,
      title: json['title'] as String?,
      count: json['count'] as int?,
      percent: (json['percent'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'count': instance.count,
      'percent': instance.percent,
    };

ShortScreenshot _$ShortScreenshotFromJson(Map<String, dynamic> json) =>
    ShortScreenshot(
      id: json['id'] as int?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ShortScreenshotToJson(ShortScreenshot instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };

Store _$StoreFromJson(Map<String, dynamic> json) => Store(
      id: json['id'] as int?,
      store: json['store'] == null
          ? null
          : Genre.fromJson(json['store'] as Map<String, dynamic>),
      urlEn: json['urlEn'] as String?,
      urlRu: json['urlRu'] as String?,
    );

Map<String, dynamic> _$StoreToJson(Store instance) => <String, dynamic>{
      'id': instance.id,
      'store': instance.store,
      'urlEn': instance.urlEn,
      'urlRu': instance.urlRu,
    };
