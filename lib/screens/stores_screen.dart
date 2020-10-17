import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:rawg_flutter/data/base.dart';
import 'package:rawg_flutter/models/store.dart';

import 'settings_screen.dart';

class StoresScreen extends StatefulWidget {
  @override
  _StoresScreenState createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  final HttpService httpService = HttpService();

  Stores storeList = Stores();

  void getStoresData() async {
    var result = await HttpService().getStores();

    var storesMap = json.decode(result);

    setState(() => storeList = Stores.fromJson(storesMap));
    return result;
  }

  @override
  void initState() {
    super.initState();
    getStoresData();
  }

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        leading: PlatformIconButton(
          icon: Icon(context.platformIcons.settings),
          onPressed: () => Navigator.of(context).push(platformPageRoute(
              context: context, builder: (context) => SettingsScreen())),
        ),
        title: Text('Stores'),
        material: (context, platform) => MaterialAppBarData(elevation: 0),
        cupertino: (context, platform) => CupertinoNavigationBarData(
          heroTag: 'StoresToSett',
          transitionBetweenRoutes: false,
        ),
      ),
      body: ListView.builder(
        itemCount: (storeList == null ||
                storeList.results == null ||
                storeList.results.length == 0)
            ? 0
            : storeList.results.length,
        itemBuilder: (BuildContext context, int index) {
          var storeTileItem = storeList.results[index];
          return ListTile(
            // leading: CachedNetworkImage(
            //     imageUrl: storeTileItem.imageBackground == null
            //         ? Image.asset("assets/app_alt.png")
            //         : storeTileItem.imageBackground,
            //     placeholder: (context, url) =>
            //         Image.asset("assets/app_alt.png")),
            title: Text(storeTileItem.name),
            subtitle: Text(
                "Total Games Count: ${storeTileItem.gamesCount.toString()}"),
            trailing:
                IconButton(icon: Icon(Icons.open_in_new), onPressed: () {}),
          );
        },
      ),
    );
  }
}
