// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publisher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Publishers _$PublishersFromJson(Map<String, dynamic> json) {
  return Publishers(
    count: json['count'] as int,
    next: json['next'] as String,
    previous: json['previous'],
    results: (json['results'] as List)
        ?.map((e) =>
            e == null ? null : Result.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PublishersToJson(Publishers instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results?.map((e) => e?.toJson())?.toList(),
    };

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
    id: json['id'] as int,
    name: json['name'] as String,
    slug: json['slug'] as String,
    gamesCount: json['gamesCount'] as int,
    imageBackground: json['imageBackground'] as String,
    games: (json['games'] as List)
        ?.map(
            (e) => e == null ? null : Game.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'gamesCount': instance.gamesCount,
      'imageBackground': instance.imageBackground,
      'games': instance.games?.map((e) => e?.toJson())?.toList(),
    };

Game _$GameFromJson(Map<String, dynamic> json) {
  return Game(
    id: json['id'] as int,
    slug: json['slug'] as String,
    name: json['name'] as String,
    added: json['added'] as int,
  );
}

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'added': instance.added,
    };
