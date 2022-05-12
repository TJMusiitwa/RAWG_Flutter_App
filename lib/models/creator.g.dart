// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Creator _$CreatorFromJson(Map<String, dynamic> json) => Creator(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'],
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => CreatorResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreatorToJson(Creator instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results?.map((e) => e.toJson()).toList(),
    };

CreatorResult _$CreatorResultFromJson(Map<String, dynamic> json) =>
    CreatorResult(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      image: json['image'] as String?,
      imageBackground: json['imageBackground'] as String?,
      gamesCount: json['gamesCount'] as int?,
      positions: (json['positions'] as List<dynamic>?)
          ?.map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
      games: (json['games'] as List<dynamic>?)
          ?.map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreatorResultToJson(CreatorResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
      'imageBackground': instance.imageBackground,
      'gamesCount': instance.gamesCount,
      'positions': instance.positions?.map((e) => e.toJson()).toList(),
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
