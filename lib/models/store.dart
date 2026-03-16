import 'package:dart_mappable/dart_mappable.dart';

part 'store.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Store with StoreMappable {
  final int id;
  final String name;
  final String? domain;
  final String slug;
  final int? gamesCount;
  final String? imageBackground;

  const Store({
    required this.id,
    required this.name,
    this.domain,
    required this.slug,
    this.gamesCount,
    this.imageBackground,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class StoreInfo with StoreInfoMappable {
  final int id;
  final Store store;
  final String? url;

  const StoreInfo({
    required this.id,
    required this.store,
    this.url,
  });
}
