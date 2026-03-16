import 'package:dart_mappable/dart_mappable.dart';
import 'package:rawg_flutter/models/genre.dart';
import 'package:rawg_flutter/models/platform.dart';
import 'package:rawg_flutter/models/publisher.dart';
import 'package:rawg_flutter/models/store.dart';

part 'game.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Game with GameMappable {
  final int id;
  final String slug;
  final String name;
  final String? nameOriginal;
  final String? description;
  final int? metacritic;
  final String? released;
  final bool? tba;
  final String? updated;
  final String? backgroundImage;
  final String? backgroundImageAdditional;
  final String? website;
  final double? rating;
  final int? ratingTop;
  final List<dynamic>? ratings;
  final int? added;
  final int? playTime;
  final int? screenshotsCount;
  final int? moviesCount;
  final int? creatorsCount;
  final int? achievementsCount;
  final int? parentAchievementsCount;
  final String? redditUrl;
  final String? metacriticUrl;
  final List<PlatformInfo>? platforms;
  final List<StoreInfo>? stores;
  final List<Genre>? genres;
  final List<Publisher>? publishers;

  const Game({
    required this.id,
    required this.slug,
    required this.name,
    this.nameOriginal,
    this.description,
    this.metacritic,
    this.released,
    this.tba,
    this.updated,
    this.backgroundImage,
    this.backgroundImageAdditional,
    this.website,
    this.rating,
    this.ratingTop,
    this.ratings,
    this.added,
    this.playTime,
    this.screenshotsCount,
    this.moviesCount,
    this.creatorsCount,
    this.achievementsCount,
    this.parentAchievementsCount,
    this.redditUrl,
    this.metacriticUrl,
    this.platforms,
    this.stores,
    this.genres,
    this.publishers,
  });
}
