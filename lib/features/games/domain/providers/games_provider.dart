import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/network/api_client.dart';
import '../../../../models/game.dart';
import '../../../../models/pagination.dart';

final gamesProvider = FutureProvider<Pagination<Game>>((ref) async {
  final apiClient = ref.read(apiClientProvider);
  return apiClient.getGames();
});

final gameDetailsProvider = FutureProvider.family<Game, int>((ref, id) async {
  final apiClient = ref.read(apiClientProvider);
  return apiClient.getGameDetails(id);
});
