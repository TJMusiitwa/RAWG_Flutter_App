import 'package:flutter/material.dart';
import 'package:rawg_flutter/screens/creators_screen.dart';
import 'package:rawg_flutter/screens/games_screen.dart';
import 'package:rawg_flutter/screens/platforms_screen.dart';
import 'package:rawg_flutter/screens/publisher_screen.dart';
import 'package:rawg_flutter/screens/stores_screen.dart';

class RAWGNav extends StatefulWidget {
  @override
  _RAWGNavState createState() => _RAWGNavState();
}

class _RAWGNavState extends State<RAWGNav> {
  int _currentScreen = 0;

  final _screens = [
    const GamesScreen(),
    const StoresScreen(),
    const PlatformsScreen(),
    const CreatorsScreen(),
    const PublishersScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: _screens.elementAt(_currentScreen)),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_esports), label: 'Games'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Stores'),
          BottomNavigationBarItem(icon: Icon(Icons.games), label: 'Platforms'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Creators'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Publishers'),
        ],
        currentIndex: _currentScreen,
        onTap: (index) => setState(() => _currentScreen = index),
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
