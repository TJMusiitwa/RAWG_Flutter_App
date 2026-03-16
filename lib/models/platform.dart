import 'package:dart_mappable/dart_mappable.dart';

part 'platform.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Platform with PlatformMappable {
  final int id;
  final String name;
  final String slug;
  final int? gamesCount;
  final String? imageBackground;
  final String? image;
  final int? yearStart;
  final int? yearEnd;

  const Platform({
    required this.id,
    required this.name,
    required this.slug,
    this.gamesCount,
    this.imageBackground,
    this.image,
    this.yearStart,
    this.yearEnd,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PlatformInfo with PlatformInfoMappable {
  final Platform platform;
  final String? releasedAt;
  final Object? requirementsEn;
  final Object? requirementsRu;

  const PlatformInfo({
    required this.platform,
    this.releasedAt,
    this.requirementsEn,
    this.requirementsRu,
  });
}
