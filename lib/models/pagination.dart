import 'package:dart_mappable/dart_mappable.dart';

part 'pagination.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Pagination<T> with PaginationMappable<T> {
  final int count;
  final String? next;
  final String? previous;
  final List<T> results;

  const Pagination({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });
}
