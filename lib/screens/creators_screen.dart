import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:rawg_flutter/data/base.dart';
import 'package:rawg_flutter/models/creator.dart';
import 'package:rawg_flutter/screens/settings_screen.dart';
import 'package:intl/intl.dart';

class CreatorsScreen extends StatefulWidget {
  @override
  _CreatorsScreenState createState() => _CreatorsScreenState();
}

class _CreatorsScreenState extends State<CreatorsScreen> {
  Creators creatorsList = Creators();

  void getCreatorsData() async {
    var creatorsResult = await HttpService().getCreators();
    var creatorsMap = json.decode(creatorsResult);
    setState(() => creatorsList = Creators.fromJson(creatorsMap));
  }

  @override
  void initState() {
    super.initState();
    getCreatorsData();
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
        trailingActions: [
          IconButton(
              icon: Icon(context.platformIcons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.filter_list), onPressed: () {})
        ],
        title: Text('Creators'),
        material: (context, platform) => MaterialAppBarData(elevation: 0),
        cupertino: (context, platform) => CupertinoNavigationBarData(
          heroTag: 'CreatToSett',
          transitionBetweenRoutes: false,
        ),
      ),
      body: ListView.builder(
        itemCount: (creatorsList == null ||
                creatorsList.results == null ||
                creatorsList.results.length == 0)
            ? 0
            : creatorsList.results.length,
        itemBuilder: (BuildContext context, int index) {
          var creatorItem = creatorsList.results[index];

          return ListTile(
            title: Text(creatorItem.name),
            subtitle: Wrap(
              spacing: 10,
              children: List<Widget>.generate(
                  creatorItem.positions.length,
                  (index) => Chip(
                      label: Text(toBeginningOfSentenceCase(
                          creatorItem.positions[index].name)))),
            ),
            isThreeLine: true,
            onTap: () {},
          );
        },
      ),
    );
  }
}
