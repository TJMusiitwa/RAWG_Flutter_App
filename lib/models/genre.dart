import 'package:dart_mappable/dart_mappable.dart';

part 'genre.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Genre with GenreMappable {
  final int id;
  final String name;
  final String slug;
  final int? gamesCount;
  final String? imageBackground;
  final String? description;

  const Genre({
    required this.id,
    required this.name,
    required this.slug,
    this.gamesCount,
    this.imageBackground,
    this.description,
  });
}
