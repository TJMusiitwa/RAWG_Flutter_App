import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:rawg_flutter/data/base.dart';
import 'package:rawg_flutter/models/platform.dart';

import 'settings_screen.dart';

class PlatformsScreen extends StatefulWidget {
  @override
  _PlatformsScreenState createState() => _PlatformsScreenState();
}

class _PlatformsScreenState extends State<PlatformsScreen> {
  Platforms platformsList = Platforms();

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        leading: PlatformIconButton(
          icon: Icon(context.platformIcons.settings),
          onPressed: () => Navigator.of(context).push(platformPageRoute(
              context: context, builder: (context) => SettingsScreen())),
        ),
        title: Text('Platforms'),
        material: (context, platform) => MaterialAppBarData(elevation: 0),
        cupertino: (context, platform) => CupertinoNavigationBarData(
          heroTag: 'PlatToSett',
          transitionBetweenRoutes: false,
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        itemCount: (platformsList == null ||
                platformsList.results == null ||
                platformsList.results.length == 0)
            ? 0
            : platformsList.results.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 2.5),
        itemBuilder: (BuildContext context, int index) {
          var platformItem = platformsList.results[index];
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: GridTile(
              child: Hero(
                  tag: platformItem.id,
                  child: Image.asset("assets/app_alt.png")),
              footer: GridTileBar(
                backgroundColor: CupertinoColors.systemGreen,
                title: Text(
                  platformItem.name,
                ),
                // subtitle: Text(platformItem.yearStart.toString() == null
                //     ? ""
                //     : platformItem.yearStart.toString()),
              ),
            ),
          );
        },
      ),
    );
  }

  void getPlatformsData() async {
    var platformsResult = await HttpService().getPlatforms();
    var platformsMap = json.decode(platformsResult);
    setState(() => platformsList = Platforms.fromJson(platformsMap));
  }

  @override
  void initState() {
    super.initState();
    getPlatformsData();
  }
}
