// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'publisher.dart';

class PublisherMapper extends ClassMapperBase<Publisher> {
  PublisherMapper._();

  static PublisherMapper? _instance;
  static PublisherMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PublisherMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Publisher';

  static int _$id(Publisher v) => v.id;
  static const Field<Publisher, int> _f$id = Field('id', _$id);
  static String _$name(Publisher v) => v.name;
  static const Field<Publisher, String> _f$name = Field('name', _$name);
  static String _$slug(Publisher v) => v.slug;
  static const Field<Publisher, String> _f$slug = Field('slug', _$slug);
  static int? _$gamesCount(Publisher v) => v.gamesCount;
  static const Field<Publisher, int> _f$gamesCount = Field(
    'gamesCount',
    _$gamesCount,
    key: r'games_count',
    opt: true,
  );
  static String? _$imageBackground(Publisher v) => v.imageBackground;
  static const Field<Publisher, String> _f$imageBackground = Field(
    'imageBackground',
    _$imageBackground,
    key: r'image_background',
    opt: true,
  );
  static String? _$description(Publisher v) => v.description;
  static const Field<Publisher, String> _f$description = Field(
    'description',
    _$description,
    opt: true,
  );

  @override
  final MappableFields<Publisher> fields = const {
    #id: _f$id,
    #name: _f$name,
    #slug: _f$slug,
    #gamesCount: _f$gamesCount,
    #imageBackground: _f$imageBackground,
    #description: _f$description,
  };

  static Publisher _instantiate(DecodingData data) {
    return Publisher(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      slug: data.dec(_f$slug),
      gamesCount: data.dec(_f$gamesCount),
      imageBackground: data.dec(_f$imageBackground),
      description: data.dec(_f$description),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Publisher fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Publisher>(map);
  }

  static Publisher fromJson(String json) {
    return ensureInitialized().decodeJson<Publisher>(json);
  }
}

mixin PublisherMappable {
  String toJson() {
    return PublisherMapper.ensureInitialized().encodeJson<Publisher>(
      this as Publisher,
    );
  }

  Map<String, dynamic> toMap() {
    return PublisherMapper.ensureInitialized().encodeMap<Publisher>(
      this as Publisher,
    );
  }

  PublisherCopyWith<Publisher, Publisher, Publisher> get copyWith =>
      _PublisherCopyWithImpl<Publisher, Publisher>(
        this as Publisher,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PublisherMapper.ensureInitialized().stringifyValue(
      this as Publisher,
    );
  }

  @override
  bool operator ==(Object other) {
    return PublisherMapper.ensureInitialized().equalsValue(
      this as Publisher,
      other,
    );
  }

  @override
  int get hashCode {
    return PublisherMapper.ensureInitialized().hashValue(this as Publisher);
  }
}

extension PublisherValueCopy<$R, $Out> on ObjectCopyWith<$R, Publisher, $Out> {
  PublisherCopyWith<$R, Publisher, $Out> get $asPublisher =>
      $base.as((v, t, t2) => _PublisherCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PublisherCopyWith<$R, $In extends Publisher, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? name,
    String? slug,
    int? gamesCount,
    String? imageBackground,
    String? description,
  });
  PublisherCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PublisherCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Publisher, $Out>
    implements PublisherCopyWith<$R, Publisher, $Out> {
  _PublisherCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Publisher> $mapper =
      PublisherMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? name,
    String? slug,
    Object? gamesCount = $none,
    Object? imageBackground = $none,
    Object? description = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (slug != null) #slug: slug,
      if (gamesCount != $none) #gamesCount: gamesCount,
      if (imageBackground != $none) #imageBackground: imageBackground,
      if (description != $none) #description: description,
    }),
  );
  @override
  Publisher $make(CopyWithData data) => Publisher(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    slug: data.get(#slug, or: $value.slug),
    gamesCount: data.get(#gamesCount, or: $value.gamesCount),
    imageBackground: data.get(#imageBackground, or: $value.imageBackground),
    description: data.get(#description, or: $value.description),
  );

  @override
  PublisherCopyWith<$R2, Publisher, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PublisherCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
