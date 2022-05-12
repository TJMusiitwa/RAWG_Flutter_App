// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Platform _$PlatformFromJson(Map<String, dynamic> json) => Platform(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'],
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => PlatformResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlatformToJson(Platform instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results?.map((e) => e.toJson()).toList(),
    };

PlatformResult _$PlatformResultFromJson(Map<String, dynamic> json) =>
    PlatformResult(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      gamesCount: json['gamesCount'] as int?,
      imageBackground: json['imageBackground'] as String?,
      image: json['image'],
      yearStart: json['yearStart'] as int?,
      yearEnd: json['yearEnd'],
      games: (json['games'] as List<dynamic>?)
          ?.map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlatformResultToJson(PlatformResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'gamesCount': instance.gamesCount,
      'imageBackground': instance.imageBackground,
      'image': instance.image,
      'yearStart': instance.yearStart,
      'yearEnd': instance.yearEnd,
      'games': instance.games?.map((e) => e.toJson()).toList(),
    };

Game _$GameFromJson(Map<String, dynamic> json) => Game(
      id: json['id'] as int?,
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      added: json['added'] as int?,
    );

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'added': instance.added,
    };
