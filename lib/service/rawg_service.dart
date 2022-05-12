import 'package:chopper/chopper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rawg_flutter/models/creator.dart' hide Game;
import 'package:rawg_flutter/models/game.dart';
import 'package:rawg_flutter/models/platform.dart' hide Game;
import 'package:rawg_flutter/models/publisher.dart' hide Game;

part 'rawg_service.chopper.dart';

final rawgServiceProvider = FutureProvider.autoDispose(
  (ref) {
    final service = RawgService.create();
    ref.maintainState = true;
    ref.onDispose(() => _$RawgService().client.dispose());
    return service;
  },
);

const String apiKey = "6ec88fc1a7f04bea9f9ad8cf05e14258";

@ChopperApi(baseUrl: "https://api.rawg.io/api")
abstract class RawgService extends ChopperService {
  ///Get a list of game creators.
  ///
  ///https://api.rawg.io/docs/#tag/creators
  @Get(path: "/creators")
  Future<Response<List<Creator>>> getCreators();

  ///Get details of the creator.
  ///
  ///https://api.rawg.io/docs/#operation/creators_read
  @Get(path: "/creators/{id}")
  Future<Response<Creator>> getCreatorById(@Path() int id);

  ///Get a list of games.
  ///
  ///https://api.rawg.io/docs/#operation/games_list
  @Get(path: "/games")
  Future<Response<List<Game>>> getGames();

  ///Get details of the game.
  ///
  ///https://api.rawg.io/docs/#operation/games_read
  @Get(path: "/games/{id}")
  Future<Response<Game>> getGameById(@Path() int id);

  ///Get a list of video game platforms.
  ///
  ///https://api.rawg.io/docs/#operation/platforms_list
  @Get(path: "/platforms")
  Future<Response> getPlatforms();

  ///Get a list of parent platforms.
  ///
  ///For instance, for PS2 and PS4 the “parent platform” is PlayStation.
  ///https://api.rawg.io/docs/#operation/platforms_lists_parents_list
  @Get(path: "/platforms/lists/parents")
  Future<Response> getPlatformsParents();

  ///Get details of the platform.
  ///
  ///https://api.rawg.io/docs/#operation/platforms_read
  @Get(path: "/platforms/{id}")
  Future<Response<Platform>> getPlatformById(@Path() int id);

  ///Get a list of video game publishers.
  ///
  ///https://api.rawg.io/docs/#operation/publishers_list
  @Get(path: "/publishers")
  Future<Response<List<Publisher>>> getPublishers();

  ///Get details of the publisher.
  ///
  ///https://api.rawg.io/docs/#operation/publishers_read
  @Get(path: "/publishers/{id}")
  Future<Response<Publisher>> getPublisherById(@Path() int id);

  /// Get a list of video game storefronts.
  ///
  /// https://api.rawg.io/docs/#operation/stores_list
  @Get(path: "/stores")
  Future<Response<List<Store>>> getStores();

  ///Get details of the store.
  ///
  ///https://api.rawg.io/docs/#operation/stores_read
  @Get(path: "/stores/{id}")
  Future<Response<Store>> getStoreById(@Path() int id);

  static RawgService create() {
    final client = ChopperClient(
      baseUrl: "https://api.rawg.io/api",
      interceptors: [
        _addQuery,
        HttpLoggingInterceptor(),
      ],
      services: [
        _$RawgService(),
      ],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
    );
    return _$RawgService(client);
  }
}

Request _addQuery(Request req) {
  final params = Map<String, dynamic>.from(req.parameters);
  params["key"] = apiKey;
  return req.copyWith(parameters: params);
}
