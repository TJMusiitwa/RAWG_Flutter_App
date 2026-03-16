import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'core/routing/router.dart';
import 'core/theme/theme.dart';

void main() {
  _setupLogging();
  runApp(
    const ProviderScope(
      child: RawgApp(),
    ),
  );
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    debugPrint('\${record.level.name}: \${record.time}: \${record.message}');
    if (record.error != null) {
      debugPrint('Error: \${record.error}');
    }
    if (record.stackTrace != null) {
      debugPrint('StackTrace: \${record.stackTrace}');
    }
  });
}

class RawgApp extends ConsumerWidget {
  const RawgApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'RAWG Explorer',
      theme: AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      routerConfig: router,
    );
  }
}
