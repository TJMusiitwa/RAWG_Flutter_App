import 'package:dart_mappable/dart_mappable.dart';

part 'mappers.mapper.dart';

@MappableClass(includeCustomMappers: [
  // Add custom mappers if any
])
class Mappers with MappersMappable {
  const Mappers();
}
