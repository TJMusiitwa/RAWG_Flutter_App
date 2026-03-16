import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../domain/providers/games_provider.dart';

class GameDetailsScreen extends ConsumerWidget {
  final int gameId;

  const GameDetailsScreen({super.key, required this.gameId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameAsync = ref.watch(gameDetailsProvider(gameId));

    return Scaffold(
      body: gameAsync.when(
        data: (game) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 300,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    game.name,
                    style: const TextStyle(
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 1),
                          blurRadius: 3.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  background: game.backgroundImage != null
                      ? CachedNetworkImage(
                          imageUrl: game.backgroundImage!,
                          fit: BoxFit.cover,
                          color: Colors.black.withAlpha(76), // ~30% opacity
                          colorBlendMode: BlendMode.darken,
                        )
                      : Container(color: Colors.grey[900]),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(16.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    if (game.released != null && game.released!.isNotEmpty)
                      _buildInfoRow('Release Date', game.released!),
                    if (game.rating != null)
                      _buildInfoRow('Rating', game.rating!.toStringAsFixed(1)),
                    if (game.metacritic != null)
                      _buildInfoRow('Metacritic', game.metacritic.toString()),
                    const SizedBox(height: 24),
                    if (game.description != null) ...[
                      Text(
                        'About',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 8),
                      // The API returns HTML description, a simple replace for common tags is needed, or use flutter_html
                      Text(
                        _stripHtmlTags(game.description!),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 24),
                    ],
                    if (game.website != null && game.website!.isNotEmpty)
                      ElevatedButton.icon(
                        icon: const Icon(Icons.language),
                        label: const Text('Website'),
                        onPressed: () => _launchUrl(game.website!),
                      ),
                    if (game.redditUrl != null && game.redditUrl!.isNotEmpty)
                      ElevatedButton.icon(
                        icon: const Icon(Icons.forum),
                        label: const Text('Reddit'),
                        onPressed: () => _launchUrl(game.redditUrl!),
                      ),
                    const SizedBox(height: 40),
                  ]),
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: \$error')),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey, fontSize: 16)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        ],
      ),
    );
  }

  String _stripHtmlTags(String htmlString) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    return htmlString.replaceAll(exp, '');
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      debugPrint('Could not launch \$url');
    }
  }
}
