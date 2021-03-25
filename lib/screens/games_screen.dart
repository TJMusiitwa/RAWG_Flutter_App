import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:rawg_flutter/data/base.dart';
import 'package:rawg_flutter/models/game.dart';

import 'settings_screen.dart';

class GamesScreen extends StatefulWidget {
  @override
  _GamesScreenState createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  final HttpService httpService = HttpService();

  Games gamesList = Games();

  void getGamesData() async {
    var gamesResult = await HttpService().getGames();

    var gamesMap = json.decode(gamesResult);

    setState(() => gamesList = Games.fromJson(gamesMap));
  }

  @override
  void initState() {
    super.initState();
    getGamesData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.settings,
            color: Colors.green,
            size: 30,
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SettingsScreen())),
        ),
        title: Text('Games'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: (gamesList == null ||
                gamesList.results == null ||
                gamesList.results.length == 0)
            ? 0
            : gamesList.results.length,
        itemBuilder: (BuildContext context, int index) {
          var gamesItem = gamesList.results[index];
          return ListTile(
            title: Text(gamesItem.name),
            subtitle: Text(
                "Release Date: ${gamesItem.released.toString().split(" ")[0]}"),
            onTap: () {},
          );
        },
      ),
    );
  }
}
