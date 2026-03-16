// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'platform.dart';

class PlatformMapper extends ClassMapperBase<Platform> {
  PlatformMapper._();

  static PlatformMapper? _instance;
  static PlatformMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlatformMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Platform';

  static int _$id(Platform v) => v.id;
  static const Field<Platform, int> _f$id = Field('id', _$id);
  static String _$name(Platform v) => v.name;
  static const Field<Platform, String> _f$name = Field('name', _$name);
  static String _$slug(Platform v) => v.slug;
  static const Field<Platform, String> _f$slug = Field('slug', _$slug);
  static int? _$gamesCount(Platform v) => v.gamesCount;
  static const Field<Platform, int> _f$gamesCount = Field(
    'gamesCount',
    _$gamesCount,
    key: r'games_count',
    opt: true,
  );
  static String? _$imageBackground(Platform v) => v.imageBackground;
  static const Field<Platform, String> _f$imageBackground = Field(
    'imageBackground',
    _$imageBackground,
    key: r'image_background',
    opt: true,
  );
  static String? _$image(Platform v) => v.image;
  static const Field<Platform, String> _f$image = Field(
    'image',
    _$image,
    opt: true,
  );
  static int? _$yearStart(Platform v) => v.yearStart;
  static const Field<Platform, int> _f$yearStart = Field(
    'yearStart',
    _$yearStart,
    key: r'year_start',
    opt: true,
  );
  static int? _$yearEnd(Platform v) => v.yearEnd;
  static const Field<Platform, int> _f$yearEnd = Field(
    'yearEnd',
    _$yearEnd,
    key: r'year_end',
    opt: true,
  );

  @override
  final MappableFields<Platform> fields = const {
    #id: _f$id,
    #name: _f$name,
    #slug: _f$slug,
    #gamesCount: _f$gamesCount,
    #imageBackground: _f$imageBackground,
    #image: _f$image,
    #yearStart: _f$yearStart,
    #yearEnd: _f$yearEnd,
  };

  static Platform _instantiate(DecodingData data) {
    return Platform(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      slug: data.dec(_f$slug),
      gamesCount: data.dec(_f$gamesCount),
      imageBackground: data.dec(_f$imageBackground),
      image: data.dec(_f$image),
      yearStart: data.dec(_f$yearStart),
      yearEnd: data.dec(_f$yearEnd),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Platform fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Platform>(map);
  }

  static Platform fromJson(String json) {
    return ensureInitialized().decodeJson<Platform>(json);
  }
}

mixin PlatformMappable {
  String toJson() {
    return PlatformMapper.ensureInitialized().encodeJson<Platform>(
      this as Platform,
    );
  }

  Map<String, dynamic> toMap() {
    return PlatformMapper.ensureInitialized().encodeMap<Platform>(
      this as Platform,
    );
  }

  PlatformCopyWith<Platform, Platform, Platform> get copyWith =>
      _PlatformCopyWithImpl<Platform, Platform>(
        this as Platform,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PlatformMapper.ensureInitialized().stringifyValue(this as Platform);
  }

  @override
  bool operator ==(Object other) {
    return PlatformMapper.ensureInitialized().equalsValue(
      this as Platform,
      other,
    );
  }

  @override
  int get hashCode {
    return PlatformMapper.ensureInitialized().hashValue(this as Platform);
  }
}

extension PlatformValueCopy<$R, $Out> on ObjectCopyWith<$R, Platform, $Out> {
  PlatformCopyWith<$R, Platform, $Out> get $asPlatform =>
      $base.as((v, t, t2) => _PlatformCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PlatformCopyWith<$R, $In extends Platform, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? name,
    String? slug,
    int? gamesCount,
    String? imageBackground,
    String? image,
    int? yearStart,
    int? yearEnd,
  });
  PlatformCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlatformCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Platform, $Out>
    implements PlatformCopyWith<$R, Platform, $Out> {
  _PlatformCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Platform> $mapper =
      PlatformMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? name,
    String? slug,
    Object? gamesCount = $none,
    Object? imageBackground = $none,
    Object? image = $none,
    Object? yearStart = $none,
    Object? yearEnd = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (slug != null) #slug: slug,
      if (gamesCount != $none) #gamesCount: gamesCount,
      if (imageBackground != $none) #imageBackground: imageBackground,
      if (image != $none) #image: image,
      if (yearStart != $none) #yearStart: yearStart,
      if (yearEnd != $none) #yearEnd: yearEnd,
    }),
  );
  @override
  Platform $make(CopyWithData data) => Platform(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    slug: data.get(#slug, or: $value.slug),
    gamesCount: data.get(#gamesCount, or: $value.gamesCount),
    imageBackground: data.get(#imageBackground, or: $value.imageBackground),
    image: data.get(#image, or: $value.image),
    yearStart: data.get(#yearStart, or: $value.yearStart),
    yearEnd: data.get(#yearEnd, or: $value.yearEnd),
  );

  @override
  PlatformCopyWith<$R2, Platform, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PlatformCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PlatformInfoMapper extends ClassMapperBase<PlatformInfo> {
  PlatformInfoMapper._();

  static PlatformInfoMapper? _instance;
  static PlatformInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlatformInfoMapper._());
      PlatformMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlatformInfo';

  static Platform _$platform(PlatformInfo v) => v.platform;
  static const Field<PlatformInfo, Platform> _f$platform = Field(
    'platform',
    _$platform,
  );
  static String? _$releasedAt(PlatformInfo v) => v.releasedAt;
  static const Field<PlatformInfo, String> _f$releasedAt = Field(
    'releasedAt',
    _$releasedAt,
    key: r'released_at',
    opt: true,
  );
  static Object? _$requirementsEn(PlatformInfo v) => v.requirementsEn;
  static const Field<PlatformInfo, Object> _f$requirementsEn = Field(
    'requirementsEn',
    _$requirementsEn,
    key: r'requirements_en',
    opt: true,
  );
  static Object? _$requirementsRu(PlatformInfo v) => v.requirementsRu;
  static const Field<PlatformInfo, Object> _f$requirementsRu = Field(
    'requirementsRu',
    _$requirementsRu,
    key: r'requirements_ru',
    opt: true,
  );

  @override
  final MappableFields<PlatformInfo> fields = const {
    #platform: _f$platform,
    #releasedAt: _f$releasedAt,
    #requirementsEn: _f$requirementsEn,
    #requirementsRu: _f$requirementsRu,
  };

  static PlatformInfo _instantiate(DecodingData data) {
    return PlatformInfo(
      platform: data.dec(_f$platform),
      releasedAt: data.dec(_f$releasedAt),
      requirementsEn: data.dec(_f$requirementsEn),
      requirementsRu: data.dec(_f$requirementsRu),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PlatformInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlatformInfo>(map);
  }

  static PlatformInfo fromJson(String json) {
    return ensureInitialized().decodeJson<PlatformInfo>(json);
  }
}

mixin PlatformInfoMappable {
  String toJson() {
    return PlatformInfoMapper.ensureInitialized().encodeJson<PlatformInfo>(
      this as PlatformInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return PlatformInfoMapper.ensureInitialized().encodeMap<PlatformInfo>(
      this as PlatformInfo,
    );
  }

  PlatformInfoCopyWith<PlatformInfo, PlatformInfo, PlatformInfo> get copyWith =>
      _PlatformInfoCopyWithImpl<PlatformInfo, PlatformInfo>(
        this as PlatformInfo,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PlatformInfoMapper.ensureInitialized().stringifyValue(
      this as PlatformInfo,
    );
  }

  @override
  bool operator ==(Object other) {
    return PlatformInfoMapper.ensureInitialized().equalsValue(
      this as PlatformInfo,
      other,
    );
  }

  @override
  int get hashCode {
    return PlatformInfoMapper.ensureInitialized().hashValue(
      this as PlatformInfo,
    );
  }
}

extension PlatformInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlatformInfo, $Out> {
  PlatformInfoCopyWith<$R, PlatformInfo, $Out> get $asPlatformInfo =>
      $base.as((v, t, t2) => _PlatformInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PlatformInfoCopyWith<$R, $In extends PlatformInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PlatformCopyWith<$R, Platform, Platform> get platform;
  $R call({
    Platform? platform,
    String? releasedAt,
    Object? requirementsEn,
    Object? requirementsRu,
  });
  PlatformInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlatformInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlatformInfo, $Out>
    implements PlatformInfoCopyWith<$R, PlatformInfo, $Out> {
  _PlatformInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlatformInfo> $mapper =
      PlatformInfoMapper.ensureInitialized();
  @override
  PlatformCopyWith<$R, Platform, Platform> get platform =>
      $value.platform.copyWith.$chain((v) => call(platform: v));
  @override
  $R call({
    Platform? platform,
    Object? releasedAt = $none,
    Object? requirementsEn = $none,
    Object? requirementsRu = $none,
  }) => $apply(
    FieldCopyWithData({
      if (platform != null) #platform: platform,
      if (releasedAt != $none) #releasedAt: releasedAt,
      if (requirementsEn != $none) #requirementsEn: requirementsEn,
      if (requirementsRu != $none) #requirementsRu: requirementsRu,
    }),
  );
  @override
  PlatformInfo $make(CopyWithData data) => PlatformInfo(
    platform: data.get(#platform, or: $value.platform),
    releasedAt: data.get(#releasedAt, or: $value.releasedAt),
    requirementsEn: data.get(#requirementsEn, or: $value.requirementsEn),
    requirementsRu: data.get(#requirementsRu, or: $value.requirementsRu),
  );

  @override
  PlatformInfoCopyWith<$R2, PlatformInfo, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PlatformInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
