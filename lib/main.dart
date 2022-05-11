import 'package:flutter/material.dart';
import 'package:rawg_flutter/rawg_nav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RAWG Flutter',
      home: RAWGNav(),
      theme: ThemeData(
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.grey),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
