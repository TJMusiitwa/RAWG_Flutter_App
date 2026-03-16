// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'store.dart';

class StoreMapper extends ClassMapperBase<Store> {
  StoreMapper._();

  static StoreMapper? _instance;
  static StoreMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StoreMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Store';

  static int _$id(Store v) => v.id;
  static const Field<Store, int> _f$id = Field('id', _$id);
  static String _$name(Store v) => v.name;
  static const Field<Store, String> _f$name = Field('name', _$name);
  static String? _$domain(Store v) => v.domain;
  static const Field<Store, String> _f$domain = Field(
    'domain',
    _$domain,
    opt: true,
  );
  static String _$slug(Store v) => v.slug;
  static const Field<Store, String> _f$slug = Field('slug', _$slug);
  static int? _$gamesCount(Store v) => v.gamesCount;
  static const Field<Store, int> _f$gamesCount = Field(
    'gamesCount',
    _$gamesCount,
    key: r'games_count',
    opt: true,
  );
  static String? _$imageBackground(Store v) => v.imageBackground;
  static const Field<Store, String> _f$imageBackground = Field(
    'imageBackground',
    _$imageBackground,
    key: r'image_background',
    opt: true,
  );

  @override
  final MappableFields<Store> fields = const {
    #id: _f$id,
    #name: _f$name,
    #domain: _f$domain,
    #slug: _f$slug,
    #gamesCount: _f$gamesCount,
    #imageBackground: _f$imageBackground,
  };

  static Store _instantiate(DecodingData data) {
    return Store(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      domain: data.dec(_f$domain),
      slug: data.dec(_f$slug),
      gamesCount: data.dec(_f$gamesCount),
      imageBackground: data.dec(_f$imageBackground),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Store fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Store>(map);
  }

  static Store fromJson(String json) {
    return ensureInitialized().decodeJson<Store>(json);
  }
}

mixin StoreMappable {
  String toJson() {
    return StoreMapper.ensureInitialized().encodeJson<Store>(this as Store);
  }

  Map<String, dynamic> toMap() {
    return StoreMapper.ensureInitialized().encodeMap<Store>(this as Store);
  }

  StoreCopyWith<Store, Store, Store> get copyWith =>
      _StoreCopyWithImpl<Store, Store>(this as Store, $identity, $identity);
  @override
  String toString() {
    return StoreMapper.ensureInitialized().stringifyValue(this as Store);
  }

  @override
  bool operator ==(Object other) {
    return StoreMapper.ensureInitialized().equalsValue(this as Store, other);
  }

  @override
  int get hashCode {
    return StoreMapper.ensureInitialized().hashValue(this as Store);
  }
}

extension StoreValueCopy<$R, $Out> on ObjectCopyWith<$R, Store, $Out> {
  StoreCopyWith<$R, Store, $Out> get $asStore =>
      $base.as((v, t, t2) => _StoreCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class StoreCopyWith<$R, $In extends Store, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? name,
    String? domain,
    String? slug,
    int? gamesCount,
    String? imageBackground,
  });
  StoreCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _StoreCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Store, $Out>
    implements StoreCopyWith<$R, Store, $Out> {
  _StoreCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Store> $mapper = StoreMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? name,
    Object? domain = $none,
    String? slug,
    Object? gamesCount = $none,
    Object? imageBackground = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (domain != $none) #domain: domain,
      if (slug != null) #slug: slug,
      if (gamesCount != $none) #gamesCount: gamesCount,
      if (imageBackground != $none) #imageBackground: imageBackground,
    }),
  );
  @override
  Store $make(CopyWithData data) => Store(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    domain: data.get(#domain, or: $value.domain),
    slug: data.get(#slug, or: $value.slug),
    gamesCount: data.get(#gamesCount, or: $value.gamesCount),
    imageBackground: data.get(#imageBackground, or: $value.imageBackground),
  );

  @override
  StoreCopyWith<$R2, Store, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _StoreCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class StoreInfoMapper extends ClassMapperBase<StoreInfo> {
  StoreInfoMapper._();

  static StoreInfoMapper? _instance;
  static StoreInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StoreInfoMapper._());
      StoreMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'StoreInfo';

  static int _$id(StoreInfo v) => v.id;
  static const Field<StoreInfo, int> _f$id = Field('id', _$id);
  static Store _$store(StoreInfo v) => v.store;
  static const Field<StoreInfo, Store> _f$store = Field('store', _$store);
  static String? _$url(StoreInfo v) => v.url;
  static const Field<StoreInfo, String> _f$url = Field('url', _$url, opt: true);

  @override
  final MappableFields<StoreInfo> fields = const {
    #id: _f$id,
    #store: _f$store,
    #url: _f$url,
  };

  static StoreInfo _instantiate(DecodingData data) {
    return StoreInfo(
      id: data.dec(_f$id),
      store: data.dec(_f$store),
      url: data.dec(_f$url),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static StoreInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StoreInfo>(map);
  }

  static StoreInfo fromJson(String json) {
    return ensureInitialized().decodeJson<StoreInfo>(json);
  }
}

mixin StoreInfoMappable {
  String toJson() {
    return StoreInfoMapper.ensureInitialized().encodeJson<StoreInfo>(
      this as StoreInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return StoreInfoMapper.ensureInitialized().encodeMap<StoreInfo>(
      this as StoreInfo,
    );
  }

  StoreInfoCopyWith<StoreInfo, StoreInfo, StoreInfo> get copyWith =>
      _StoreInfoCopyWithImpl<StoreInfo, StoreInfo>(
        this as StoreInfo,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return StoreInfoMapper.ensureInitialized().stringifyValue(
      this as StoreInfo,
    );
  }

  @override
  bool operator ==(Object other) {
    return StoreInfoMapper.ensureInitialized().equalsValue(
      this as StoreInfo,
      other,
    );
  }

  @override
  int get hashCode {
    return StoreInfoMapper.ensureInitialized().hashValue(this as StoreInfo);
  }
}

extension StoreInfoValueCopy<$R, $Out> on ObjectCopyWith<$R, StoreInfo, $Out> {
  StoreInfoCopyWith<$R, StoreInfo, $Out> get $asStoreInfo =>
      $base.as((v, t, t2) => _StoreInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class StoreInfoCopyWith<$R, $In extends StoreInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  StoreCopyWith<$R, Store, Store> get store;
  $R call({int? id, Store? store, String? url});
  StoreInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _StoreInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StoreInfo, $Out>
    implements StoreInfoCopyWith<$R, StoreInfo, $Out> {
  _StoreInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StoreInfo> $mapper =
      StoreInfoMapper.ensureInitialized();
  @override
  StoreCopyWith<$R, Store, Store> get store =>
      $value.store.copyWith.$chain((v) => call(store: v));
  @override
  $R call({int? id, Store? store, Object? url = $none}) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (store != null) #store: store,
      if (url != $none) #url: url,
    }),
  );
  @override
  StoreInfo $make(CopyWithData data) => StoreInfo(
    id: data.get(#id, or: $value.id),
    store: data.get(#store, or: $value.store),
    url: data.get(#url, or: $value.url),
  );

  @override
  StoreInfoCopyWith<$R2, StoreInfo, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _StoreInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
