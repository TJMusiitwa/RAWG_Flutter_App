// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pagination.dart';

class PaginationMapper extends ClassMapperBase<Pagination> {
  PaginationMapper._();

  static PaginationMapper? _instance;
  static PaginationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaginationMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Pagination';
  @override
  Function get typeFactory =>
      <T>(f) => f<Pagination<T>>();

  static int _$count(Pagination v) => v.count;
  static const Field<Pagination, int> _f$count = Field('count', _$count);
  static String? _$next(Pagination v) => v.next;
  static const Field<Pagination, String> _f$next = Field(
    'next',
    _$next,
    opt: true,
  );
  static String? _$previous(Pagination v) => v.previous;
  static const Field<Pagination, String> _f$previous = Field(
    'previous',
    _$previous,
    opt: true,
  );
  static List<dynamic> _$results(Pagination v) => v.results;
  static dynamic _arg$results<T>(f) => f<List<T>>();
  static const Field<Pagination, List<dynamic>> _f$results = Field(
    'results',
    _$results,
    arg: _arg$results,
  );

  @override
  final MappableFields<Pagination> fields = const {
    #count: _f$count,
    #next: _f$next,
    #previous: _f$previous,
    #results: _f$results,
  };

  static Pagination<T> _instantiate<T>(DecodingData data) {
    return Pagination(
      count: data.dec(_f$count),
      next: data.dec(_f$next),
      previous: data.dec(_f$previous),
      results: data.dec(_f$results),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Pagination<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Pagination<T>>(map);
  }

  static Pagination<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<Pagination<T>>(json);
  }
}

mixin PaginationMappable<T> {
  String toJson() {
    return PaginationMapper.ensureInitialized().encodeJson<Pagination<T>>(
      this as Pagination<T>,
    );
  }

  Map<String, dynamic> toMap() {
    return PaginationMapper.ensureInitialized().encodeMap<Pagination<T>>(
      this as Pagination<T>,
    );
  }

  PaginationCopyWith<Pagination<T>, Pagination<T>, Pagination<T>, T>
  get copyWith => _PaginationCopyWithImpl<Pagination<T>, Pagination<T>, T>(
    this as Pagination<T>,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return PaginationMapper.ensureInitialized().stringifyValue(
      this as Pagination<T>,
    );
  }

  @override
  bool operator ==(Object other) {
    return PaginationMapper.ensureInitialized().equalsValue(
      this as Pagination<T>,
      other,
    );
  }

  @override
  int get hashCode {
    return PaginationMapper.ensureInitialized().hashValue(
      this as Pagination<T>,
    );
  }
}

extension PaginationValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, Pagination<T>, $Out> {
  PaginationCopyWith<$R, Pagination<T>, $Out, T> get $asPagination =>
      $base.as((v, t, t2) => _PaginationCopyWithImpl<$R, $Out, T>(v, t, t2));
}

abstract class PaginationCopyWith<$R, $In extends Pagination<T>, $Out, T>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>?> get results;
  $R call({int? count, String? next, String? previous, List<T>? results});
  PaginationCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PaginationCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, Pagination<T>, $Out>
    implements PaginationCopyWith<$R, Pagination<T>, $Out, T> {
  _PaginationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Pagination> $mapper =
      PaginationMapper.ensureInitialized();
  @override
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>?> get results => ListCopyWith(
    $value.results,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(results: v),
  );
  @override
  $R call({
    int? count,
    Object? next = $none,
    Object? previous = $none,
    List<T>? results,
  }) => $apply(
    FieldCopyWithData({
      if (count != null) #count: count,
      if (next != $none) #next: next,
      if (previous != $none) #previous: previous,
      if (results != null) #results: results,
    }),
  );
  @override
  Pagination<T> $make(CopyWithData data) => Pagination(
    count: data.get(#count, or: $value.count),
    next: data.get(#next, or: $value.next),
    previous: data.get(#previous, or: $value.previous),
    results: data.get(#results, or: $value.results),
  );

  @override
  PaginationCopyWith<$R2, Pagination<T>, $Out2, T> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PaginationCopyWithImpl<$R2, $Out2, T>($value, $cast, t);
}
