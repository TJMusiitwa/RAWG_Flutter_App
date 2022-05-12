import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rawg_flutter/service/rawg_service.dart';

class PlatformsScreen extends ConsumerWidget {
  const PlatformsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final platforms = ref.watch(rawgServiceProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Platforms'),
      ),
      body: FutureBuilder(
        future: platforms.value!.getPlatforms(),
        initialData: null,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Error loading platforms'),
              );
            }
            final platforms = snapshot.data.body['results'];
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: platforms.length,
              itemBuilder: (BuildContext context, int index) {
                final platform = platforms[index];
                return GridTile(
                  child: Image.network(
                    platform['image_background'],
                    fit: BoxFit.cover,
                  ),
                  footer: GridTileBar(
                    title: Text(platform['name']),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
