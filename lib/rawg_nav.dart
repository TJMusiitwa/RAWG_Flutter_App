import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
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

  var screens = [
    GamesScreen(),
    StoresScreen(),
    PlatformsScreen(),
    CreatorsScreen(),
    PublishersScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: Container(
        child: screens.elementAt(_currentScreen),
      ),
      bottomNavBar: PlatformNavBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.game_controller_solid), label: 'Games'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Stores'),
          BottomNavigationBarItem(icon: Icon(Icons.games), label: 'Platforms'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Creators'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Publishers'),
        ],
        currentIndex: _currentScreen,
        itemChanged: (index) => setState(() => _currentScreen = index),
        material: (context, platform) => MaterialNavBarData(
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Theme.of(context).disabledColor,
        ),
        cupertino: (context, platform) => CupertinoTabBarData(
            activeColor: CupertinoColors.systemGreen,
            inactiveColor: CupertinoColors.inactiveGray),
      ),
    );
  }
}
