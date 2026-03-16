import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/game.dart';
import '../../models/genre.dart';
import '../../models/pagination.dart';

final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient();
});

class ApiClient {
  static const String baseUrl = 'https://api.rawg.io/api';
  // TODO: Replace with real API key when provided
  static const String apiKey = 'API_KEY_PLACEHOLDER';

  final http.Client _client;
  final Logger _logger;

  ApiClient({http.Client? client})
      : _client = client ?? http.Client(),
        _logger = Logger('ApiClient');

  Future<Pagination<Game>> getGames({int page = 1, String? search, String? ordering, String? genres}) async {
    final queryParameters = {
      'key': apiKey,
      'page': page.toString(),
      if (search != null && search.isNotEmpty) 'search': search,
      if (ordering != null && ordering.isNotEmpty) 'ordering': ordering,
      if (genres != null && genres.isNotEmpty) 'genres': genres,
    };

    final uri = Uri.parse('$baseUrl/games').replace(queryParameters: queryParameters);
    _logger.info('Fetching games from: \$uri');

    final response = await _client.get(uri);

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;

      final resultsList = jsonMap['results'] as List<dynamic>? ?? [];
      final parsedResults = resultsList.map((e) => GameMapper.fromMap(e as Map<String, dynamic>)).toList();

      return Pagination<Game>(
        count: jsonMap['count'] as int? ?? 0,
        next: jsonMap['next'] as String?,
        previous: jsonMap['previous'] as String?,
        results: parsedResults,
      );
    } else {
      _logger.severe('Failed to load games: \${response.statusCode} \${response.body}');
      throw Exception('Failed to load games');
    }
  }

  Future<Game> getGameDetails(int id) async {
    final uri = Uri.parse('$baseUrl/games/$id').replace(queryParameters: {'key': apiKey});
    _logger.info('Fetching game details from: \$uri');

    final response = await _client.get(uri);

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return GameMapper.fromMap(jsonMap);
    } else {
      _logger.severe('Failed to load game details: \${response.statusCode} \${response.body}');
      throw Exception('Failed to load game details');
    }
  }

  Future<Pagination<Genre>> getGenres({int page = 1}) async {
    final queryParameters = {
      'key': apiKey,
      'page': page.toString(),
    };

    final uri = Uri.parse('$baseUrl/genres').replace(queryParameters: queryParameters);
    _logger.info('Fetching genres from: \$uri');

    final response = await _client.get(uri);

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;

      final resultsList = jsonMap['results'] as List<dynamic>? ?? [];
      final parsedResults = resultsList.map((e) => GenreMapper.fromMap(e as Map<String, dynamic>)).toList();

      return Pagination<Genre>(
        count: jsonMap['count'] as int? ?? 0,
        next: jsonMap['next'] as String?,
        previous: jsonMap['previous'] as String?,
        results: parsedResults,
      );
    } else {
      _logger.severe('Failed to load genres: \${response.statusCode} \${response.body}');
      throw Exception('Failed to load genres');
    }
  }
}
