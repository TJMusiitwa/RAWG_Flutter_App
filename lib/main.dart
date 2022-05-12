import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:rawg_flutter/rawg_nav.dart';

void main() {
  _setUpChopperLogging();
  runApp(ProviderScope(child: MyApp()));
}

void _setUpChopperLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    debugPrint('${record.level.name}: ${record.time}: ${record.message}');
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RAWG Flutter',
      home: RAWGNav(),
      theme: ThemeData(
        primaryColor: Colors.black,
        androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
        appBarTheme: const AppBarTheme(
          color: Colors.black,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
