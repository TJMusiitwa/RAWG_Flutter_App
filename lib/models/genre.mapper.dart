// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'genre.dart';

class GenreMapper extends ClassMapperBase<Genre> {
  GenreMapper._();

  static GenreMapper? _instance;
  static GenreMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GenreMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Genre';

  static int _$id(Genre v) => v.id;
  static const Field<Genre, int> _f$id = Field('id', _$id);
  static String _$name(Genre v) => v.name;
  static const Field<Genre, String> _f$name = Field('name', _$name);
  static String _$slug(Genre v) => v.slug;
  static const Field<Genre, String> _f$slug = Field('slug', _$slug);
  static int? _$gamesCount(Genre v) => v.gamesCount;
  static const Field<Genre, int> _f$gamesCount = Field(
    'gamesCount',
    _$gamesCount,
    key: r'games_count',
    opt: true,
  );
  static String? _$imageBackground(Genre v) => v.imageBackground;
  static const Field<Genre, String> _f$imageBackground = Field(
    'imageBackground',
    _$imageBackground,
    key: r'image_background',
    opt: true,
  );
  static String? _$description(Genre v) => v.description;
  static const Field<Genre, String> _f$description = Field(
    'description',
    _$description,
    opt: true,
  );

  @override
  final MappableFields<Genre> fields = const {
    #id: _f$id,
    #name: _f$name,
    #slug: _f$slug,
    #gamesCount: _f$gamesCount,
    #imageBackground: _f$imageBackground,
    #description: _f$description,
  };

  static Genre _instantiate(DecodingData data) {
    return Genre(
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

  static Genre fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Genre>(map);
  }

  static Genre fromJson(String json) {
    return ensureInitialized().decodeJson<Genre>(json);
  }
}

mixin GenreMappable {
  String toJson() {
    return GenreMapper.ensureInitialized().encodeJson<Genre>(this as Genre);
  }

  Map<String, dynamic> toMap() {
    return GenreMapper.ensureInitialized().encodeMap<Genre>(this as Genre);
  }

  GenreCopyWith<Genre, Genre, Genre> get copyWith =>
      _GenreCopyWithImpl<Genre, Genre>(this as Genre, $identity, $identity);
  @override
  String toString() {
    return GenreMapper.ensureInitialized().stringifyValue(this as Genre);
  }

  @override
  bool operator ==(Object other) {
    return GenreMapper.ensureInitialized().equalsValue(this as Genre, other);
  }

  @override
  int get hashCode {
    return GenreMapper.ensureInitialized().hashValue(this as Genre);
  }
}

extension GenreValueCopy<$R, $Out> on ObjectCopyWith<$R, Genre, $Out> {
  GenreCopyWith<$R, Genre, $Out> get $asGenre =>
      $base.as((v, t, t2) => _GenreCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GenreCopyWith<$R, $In extends Genre, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? name,
    String? slug,
    int? gamesCount,
    String? imageBackground,
    String? description,
  });
  GenreCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GenreCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Genre, $Out>
    implements GenreCopyWith<$R, Genre, $Out> {
  _GenreCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Genre> $mapper = GenreMapper.ensureInitialized();
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
  Genre $make(CopyWithData data) => Genre(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    slug: data.get(#slug, or: $value.slug),
    gamesCount: data.get(#gamesCount, or: $value.gamesCount),
    imageBackground: data.get(#imageBackground, or: $value.imageBackground),
    description: data.get(#description, or: $value.description),
  );

  @override
  GenreCopyWith<$R2, Genre, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _GenreCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
