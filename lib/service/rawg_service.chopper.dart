// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rawg_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$RawgService extends RawgService {
  _$RawgService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = RawgService;

  @override
  Future<Response<List<Creator>>> getCreators() {
    final $url = 'https://api.rawg.io/api/creators';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<Creator>, Creator>($request);
  }

  @override
  Future<Response<Creator>> getCreatorById(int id) {
    final $url = 'https://api.rawg.io/api/creators/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Creator, Creator>($request);
  }

  @override
  Future<Response<List<Game>>> getGames() {
    final $url = 'https://api.rawg.io/api/games';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<Game>, Game>($request);
  }

  @override
  Future<Response<Game>> getGameById(int id) {
    final $url = 'https://api.rawg.io/api/games/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Game, Game>($request);
  }

  @override
  Future<Response<dynamic>> getPlatforms() {
    final $url = 'https://api.rawg.io/api/platforms';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getPlatformsParents() {
    final $url = 'https://api.rawg.io/api/platforms/lists/parents';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Platform>> getPlatformById(int id) {
    final $url = 'https://api.rawg.io/api/platforms/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Platform, Platform>($request);
  }

  @override
  Future<Response<List<Publisher>>> getPublishers() {
    final $url = 'https://api.rawg.io/api/publishers';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<Publisher>, Publisher>($request);
  }

  @override
  Future<Response<Publisher>> getPublisherById(int id) {
    final $url = 'https://api.rawg.io/api/publishers/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Publisher, Publisher>($request);
  }

  @override
  Future<Response<List<Store>>> getStores() {
    final $url = 'https://api.rawg.io/api/stores';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<Store>, Store>($request);
  }

  @override
  Future<Response<Store>> getStoreById(int id) {
    final $url = 'https://api.rawg.io/api/stores/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Store, Store>($request);
  }
}
