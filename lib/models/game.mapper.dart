// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'game.dart';

class GameMapper extends ClassMapperBase<Game> {
  GameMapper._();

  static GameMapper? _instance;
  static GameMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GameMapper._());
      PlatformInfoMapper.ensureInitialized();
      StoreInfoMapper.ensureInitialized();
      GenreMapper.ensureInitialized();
      PublisherMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Game';

  static int _$id(Game v) => v.id;
  static const Field<Game, int> _f$id = Field('id', _$id);
  static String _$slug(Game v) => v.slug;
  static const Field<Game, String> _f$slug = Field('slug', _$slug);
  static String _$name(Game v) => v.name;
  static const Field<Game, String> _f$name = Field('name', _$name);
  static String? _$nameOriginal(Game v) => v.nameOriginal;
  static const Field<Game, String> _f$nameOriginal = Field(
    'nameOriginal',
    _$nameOriginal,
    key: r'name_original',
    opt: true,
  );
  static String? _$description(Game v) => v.description;
  static const Field<Game, String> _f$description = Field(
    'description',
    _$description,
    opt: true,
  );
  static int? _$metacritic(Game v) => v.metacritic;
  static const Field<Game, int> _f$metacritic = Field(
    'metacritic',
    _$metacritic,
    opt: true,
  );
  static String? _$released(Game v) => v.released;
  static const Field<Game, String> _f$released = Field(
    'released',
    _$released,
    opt: true,
  );
  static bool? _$tba(Game v) => v.tba;
  static const Field<Game, bool> _f$tba = Field('tba', _$tba, opt: true);
  static String? _$updated(Game v) => v.updated;
  static const Field<Game, String> _f$updated = Field(
    'updated',
    _$updated,
    opt: true,
  );
  static String? _$backgroundImage(Game v) => v.backgroundImage;
  static const Field<Game, String> _f$backgroundImage = Field(
    'backgroundImage',
    _$backgroundImage,
    key: r'background_image',
    opt: true,
  );
  static String? _$backgroundImageAdditional(Game v) =>
      v.backgroundImageAdditional;
  static const Field<Game, String> _f$backgroundImageAdditional = Field(
    'backgroundImageAdditional',
    _$backgroundImageAdditional,
    key: r'background_image_additional',
    opt: true,
  );
  static String? _$website(Game v) => v.website;
  static const Field<Game, String> _f$website = Field(
    'website',
    _$website,
    opt: true,
  );
  static double? _$rating(Game v) => v.rating;
  static const Field<Game, double> _f$rating = Field(
    'rating',
    _$rating,
    opt: true,
  );
  static int? _$ratingTop(Game v) => v.ratingTop;
  static const Field<Game, int> _f$ratingTop = Field(
    'ratingTop',
    _$ratingTop,
    key: r'rating_top',
    opt: true,
  );
  static List<dynamic>? _$ratings(Game v) => v.ratings;
  static const Field<Game, List<dynamic>> _f$ratings = Field(
    'ratings',
    _$ratings,
    opt: true,
  );
  static int? _$added(Game v) => v.added;
  static const Field<Game, int> _f$added = Field('added', _$added, opt: true);
  static int? _$playTime(Game v) => v.playTime;
  static const Field<Game, int> _f$playTime = Field(
    'playTime',
    _$playTime,
    key: r'play_time',
    opt: true,
  );
  static int? _$screenshotsCount(Game v) => v.screenshotsCount;
  static const Field<Game, int> _f$screenshotsCount = Field(
    'screenshotsCount',
    _$screenshotsCount,
    key: r'screenshots_count',
    opt: true,
  );
  static int? _$moviesCount(Game v) => v.moviesCount;
  static const Field<Game, int> _f$moviesCount = Field(
    'moviesCount',
    _$moviesCount,
    key: r'movies_count',
    opt: true,
  );
  static int? _$creatorsCount(Game v) => v.creatorsCount;
  static const Field<Game, int> _f$creatorsCount = Field(
    'creatorsCount',
    _$creatorsCount,
    key: r'creators_count',
    opt: true,
  );
  static int? _$achievementsCount(Game v) => v.achievementsCount;
  static const Field<Game, int> _f$achievementsCount = Field(
    'achievementsCount',
    _$achievementsCount,
    key: r'achievements_count',
    opt: true,
  );
  static int? _$parentAchievementsCount(Game v) => v.parentAchievementsCount;
  static const Field<Game, int> _f$parentAchievementsCount = Field(
    'parentAchievementsCount',
    _$parentAchievementsCount,
    key: r'parent_achievements_count',
    opt: true,
  );
  static String? _$redditUrl(Game v) => v.redditUrl;
  static const Field<Game, String> _f$redditUrl = Field(
    'redditUrl',
    _$redditUrl,
    key: r'reddit_url',
    opt: true,
  );
  static String? _$metacriticUrl(Game v) => v.metacriticUrl;
  static const Field<Game, String> _f$metacriticUrl = Field(
    'metacriticUrl',
    _$metacriticUrl,
    key: r'metacritic_url',
    opt: true,
  );
  static List<PlatformInfo>? _$platforms(Game v) => v.platforms;
  static const Field<Game, List<PlatformInfo>> _f$platforms = Field(
    'platforms',
    _$platforms,
    opt: true,
  );
  static List<StoreInfo>? _$stores(Game v) => v.stores;
  static const Field<Game, List<StoreInfo>> _f$stores = Field(
    'stores',
    _$stores,
    opt: true,
  );
  static List<Genre>? _$genres(Game v) => v.genres;
  static const Field<Game, List<Genre>> _f$genres = Field(
    'genres',
    _$genres,
    opt: true,
  );
  static List<Publisher>? _$publishers(Game v) => v.publishers;
  static const Field<Game, List<Publisher>> _f$publishers = Field(
    'publishers',
    _$publishers,
    opt: true,
  );

  @override
  final MappableFields<Game> fields = const {
    #id: _f$id,
    #slug: _f$slug,
    #name: _f$name,
    #nameOriginal: _f$nameOriginal,
    #description: _f$description,
    #metacritic: _f$metacritic,
    #released: _f$released,
    #tba: _f$tba,
    #updated: _f$updated,
    #backgroundImage: _f$backgroundImage,
    #backgroundImageAdditional: _f$backgroundImageAdditional,
    #website: _f$website,
    #rating: _f$rating,
    #ratingTop: _f$ratingTop,
    #ratings: _f$ratings,
    #added: _f$added,
    #playTime: _f$playTime,
    #screenshotsCount: _f$screenshotsCount,
    #moviesCount: _f$moviesCount,
    #creatorsCount: _f$creatorsCount,
    #achievementsCount: _f$achievementsCount,
    #parentAchievementsCount: _f$parentAchievementsCount,
    #redditUrl: _f$redditUrl,
    #metacriticUrl: _f$metacriticUrl,
    #platforms: _f$platforms,
    #stores: _f$stores,
    #genres: _f$genres,
    #publishers: _f$publishers,
  };

  static Game _instantiate(DecodingData data) {
    return Game(
      id: data.dec(_f$id),
      slug: data.dec(_f$slug),
      name: data.dec(_f$name),
      nameOriginal: data.dec(_f$nameOriginal),
      description: data.dec(_f$description),
      metacritic: data.dec(_f$metacritic),
      released: data.dec(_f$released),
      tba: data.dec(_f$tba),
      updated: data.dec(_f$updated),
      backgroundImage: data.dec(_f$backgroundImage),
      backgroundImageAdditional: data.dec(_f$backgroundImageAdditional),
      website: data.dec(_f$website),
      rating: data.dec(_f$rating),
      ratingTop: data.dec(_f$ratingTop),
      ratings: data.dec(_f$ratings),
      added: data.dec(_f$added),
      playTime: data.dec(_f$playTime),
      screenshotsCount: data.dec(_f$screenshotsCount),
      moviesCount: data.dec(_f$moviesCount),
      creatorsCount: data.dec(_f$creatorsCount),
      achievementsCount: data.dec(_f$achievementsCount),
      parentAchievementsCount: data.dec(_f$parentAchievementsCount),
      redditUrl: data.dec(_f$redditUrl),
      metacriticUrl: data.dec(_f$metacriticUrl),
      platforms: data.dec(_f$platforms),
      stores: data.dec(_f$stores),
      genres: data.dec(_f$genres),
      publishers: data.dec(_f$publishers),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Game fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Game>(map);
  }

  static Game fromJson(String json) {
    return ensureInitialized().decodeJson<Game>(json);
  }
}

mixin GameMappable {
  String toJson() {
    return GameMapper.ensureInitialized().encodeJson<Game>(this as Game);
  }

  Map<String, dynamic> toMap() {
    return GameMapper.ensureInitialized().encodeMap<Game>(this as Game);
  }

  GameCopyWith<Game, Game, Game> get copyWith =>
      _GameCopyWithImpl<Game, Game>(this as Game, $identity, $identity);
  @override
  String toString() {
    return GameMapper.ensureInitialized().stringifyValue(this as Game);
  }

  @override
  bool operator ==(Object other) {
    return GameMapper.ensureInitialized().equalsValue(this as Game, other);
  }

  @override
  int get hashCode {
    return GameMapper.ensureInitialized().hashValue(this as Game);
  }
}

extension GameValueCopy<$R, $Out> on ObjectCopyWith<$R, Game, $Out> {
  GameCopyWith<$R, Game, $Out> get $asGame =>
      $base.as((v, t, t2) => _GameCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GameCopyWith<$R, $In extends Game, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>? get ratings;
  ListCopyWith<
    $R,
    PlatformInfo,
    PlatformInfoCopyWith<$R, PlatformInfo, PlatformInfo>
  >?
  get platforms;
  ListCopyWith<$R, StoreInfo, StoreInfoCopyWith<$R, StoreInfo, StoreInfo>>?
  get stores;
  ListCopyWith<$R, Genre, GenreCopyWith<$R, Genre, Genre>>? get genres;
  ListCopyWith<$R, Publisher, PublisherCopyWith<$R, Publisher, Publisher>>?
  get publishers;
  $R call({
    int? id,
    String? slug,
    String? name,
    String? nameOriginal,
    String? description,
    int? metacritic,
    String? released,
    bool? tba,
    String? updated,
    String? backgroundImage,
    String? backgroundImageAdditional,
    String? website,
    double? rating,
    int? ratingTop,
    List<dynamic>? ratings,
    int? added,
    int? playTime,
    int? screenshotsCount,
    int? moviesCount,
    int? creatorsCount,
    int? achievementsCount,
    int? parentAchievementsCount,
    String? redditUrl,
    String? metacriticUrl,
    List<PlatformInfo>? platforms,
    List<StoreInfo>? stores,
    List<Genre>? genres,
    List<Publisher>? publishers,
  });
  GameCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GameCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Game, $Out>
    implements GameCopyWith<$R, Game, $Out> {
  _GameCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Game> $mapper = GameMapper.ensureInitialized();
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>?
  get ratings => $value.ratings != null
      ? ListCopyWith(
          $value.ratings!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(ratings: v),
        )
      : null;
  @override
  ListCopyWith<
    $R,
    PlatformInfo,
    PlatformInfoCopyWith<$R, PlatformInfo, PlatformInfo>
  >?
  get platforms => $value.platforms != null
      ? ListCopyWith(
          $value.platforms!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(platforms: v),
        )
      : null;
  @override
  ListCopyWith<$R, StoreInfo, StoreInfoCopyWith<$R, StoreInfo, StoreInfo>>?
  get stores => $value.stores != null
      ? ListCopyWith(
          $value.stores!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(stores: v),
        )
      : null;
  @override
  ListCopyWith<$R, Genre, GenreCopyWith<$R, Genre, Genre>>? get genres =>
      $value.genres != null
      ? ListCopyWith(
          $value.genres!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(genres: v),
        )
      : null;
  @override
  ListCopyWith<$R, Publisher, PublisherCopyWith<$R, Publisher, Publisher>>?
  get publishers => $value.publishers != null
      ? ListCopyWith(
          $value.publishers!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(publishers: v),
        )
      : null;
  @override
  $R call({
    int? id,
    String? slug,
    String? name,
    Object? nameOriginal = $none,
    Object? description = $none,
    Object? metacritic = $none,
    Object? released = $none,
    Object? tba = $none,
    Object? updated = $none,
    Object? backgroundImage = $none,
    Object? backgroundImageAdditional = $none,
    Object? website = $none,
    Object? rating = $none,
    Object? ratingTop = $none,
    Object? ratings = $none,
    Object? added = $none,
    Object? playTime = $none,
    Object? screenshotsCount = $none,
    Object? moviesCount = $none,
    Object? creatorsCount = $none,
    Object? achievementsCount = $none,
    Object? parentAchievementsCount = $none,
    Object? redditUrl = $none,
    Object? metacriticUrl = $none,
    Object? platforms = $none,
    Object? stores = $none,
    Object? genres = $none,
    Object? publishers = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (slug != null) #slug: slug,
      if (name != null) #name: name,
      if (nameOriginal != $none) #nameOriginal: nameOriginal,
      if (description != $none) #description: description,
      if (metacritic != $none) #metacritic: metacritic,
      if (released != $none) #released: released,
      if (tba != $none) #tba: tba,
      if (updated != $none) #updated: updated,
      if (backgroundImage != $none) #backgroundImage: backgroundImage,
      if (backgroundImageAdditional != $none)
        #backgroundImageAdditional: backgroundImageAdditional,
      if (website != $none) #website: website,
      if (rating != $none) #rating: rating,
      if (ratingTop != $none) #ratingTop: ratingTop,
      if (ratings != $none) #ratings: ratings,
      if (added != $none) #added: added,
      if (playTime != $none) #playTime: playTime,
      if (screenshotsCount != $none) #screenshotsCount: screenshotsCount,
      if (moviesCount != $none) #moviesCount: moviesCount,
      if (creatorsCount != $none) #creatorsCount: creatorsCount,
      if (achievementsCount != $none) #achievementsCount: achievementsCount,
      if (parentAchievementsCount != $none)
        #parentAchievementsCount: parentAchievementsCount,
      if (redditUrl != $none) #redditUrl: redditUrl,
      if (metacriticUrl != $none) #metacriticUrl: metacriticUrl,
      if (platforms != $none) #platforms: platforms,
      if (stores != $none) #stores: stores,
      if (genres != $none) #genres: genres,
      if (publishers != $none) #publishers: publishers,
    }),
  );
  @override
  Game $make(CopyWithData data) => Game(
    id: data.get(#id, or: $value.id),
    slug: data.get(#slug, or: $value.slug),
    name: data.get(#name, or: $value.name),
    nameOriginal: data.get(#nameOriginal, or: $value.nameOriginal),
    description: data.get(#description, or: $value.description),
    metacritic: data.get(#metacritic, or: $value.metacritic),
    released: data.get(#released, or: $value.released),
    tba: data.get(#tba, or: $value.tba),
    updated: data.get(#updated, or: $value.updated),
    backgroundImage: data.get(#backgroundImage, or: $value.backgroundImage),
    backgroundImageAdditional: data.get(
      #backgroundImageAdditional,
      or: $value.backgroundImageAdditional,
    ),
    website: data.get(#website, or: $value.website),
    rating: data.get(#rating, or: $value.rating),
    ratingTop: data.get(#ratingTop, or: $value.ratingTop),
    ratings: data.get(#ratings, or: $value.ratings),
    added: data.get(#added, or: $value.added),
    playTime: data.get(#playTime, or: $value.playTime),
    screenshotsCount: data.get(#screenshotsCount, or: $value.screenshotsCount),
    moviesCount: data.get(#moviesCount, or: $value.moviesCount),
    creatorsCount: data.get(#creatorsCount, or: $value.creatorsCount),
    achievementsCount: data.get(
      #achievementsCount,
      or: $value.achievementsCount,
    ),
    parentAchievementsCount: data.get(
      #parentAchievementsCount,
      or: $value.parentAchievementsCount,
    ),
    redditUrl: data.get(#redditUrl, or: $value.redditUrl),
    metacriticUrl: data.get(#metacriticUrl, or: $value.metacriticUrl),
    platforms: data.get(#platforms, or: $value.platforms),
    stores: data.get(#stores, or: $value.stores),
    genres: data.get(#genres, or: $value.genres),
    publishers: data.get(#publishers, or: $value.publishers),
  );

  @override
  GameCopyWith<$R2, Game, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _GameCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
