// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'mappers.dart';

class MappersMapper extends ClassMapperBase<Mappers> {
  MappersMapper._();

  static MappersMapper? _instance;
  static MappersMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MappersMapper._());
      MapperContainer.globals.useAll([]);
    }
    return _instance!;
  }

  @override
  final String id = 'Mappers';

  @override
  final MappableFields<Mappers> fields = const {};

  static Mappers _instantiate(DecodingData data) {
    return Mappers();
  }

  @override
  final Function instantiate = _instantiate;

  static Mappers fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Mappers>(map);
  }

  static Mappers fromJson(String json) {
    return ensureInitialized().decodeJson<Mappers>(json);
  }
}

mixin MappersMappable {
  String toJson() {
    return MappersMapper.ensureInitialized().encodeJson<Mappers>(
      this as Mappers,
    );
  }

  Map<String, dynamic> toMap() {
    return MappersMapper.ensureInitialized().encodeMap<Mappers>(
      this as Mappers,
    );
  }

  MappersCopyWith<Mappers, Mappers, Mappers> get copyWith =>
      _MappersCopyWithImpl<Mappers, Mappers>(
        this as Mappers,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MappersMapper.ensureInitialized().stringifyValue(this as Mappers);
  }

  @override
  bool operator ==(Object other) {
    return MappersMapper.ensureInitialized().equalsValue(
      this as Mappers,
      other,
    );
  }

  @override
  int get hashCode {
    return MappersMapper.ensureInitialized().hashValue(this as Mappers);
  }
}

extension MappersValueCopy<$R, $Out> on ObjectCopyWith<$R, Mappers, $Out> {
  MappersCopyWith<$R, Mappers, $Out> get $asMappers =>
      $base.as((v, t, t2) => _MappersCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MappersCopyWith<$R, $In extends Mappers, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  MappersCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MappersCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Mappers, $Out>
    implements MappersCopyWith<$R, Mappers, $Out> {
  _MappersCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Mappers> $mapper =
      MappersMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  Mappers $make(CopyWithData data) => Mappers();

  @override
  MappersCopyWith<$R2, Mappers, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MappersCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
