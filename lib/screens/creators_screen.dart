import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SettingsScreen())),
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.filter_list), onPressed: () {})
        ],
        title: Text('Creators'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: (creatorsList == null ||
                creatorsList.results == null ||
                creatorsList.results!.length == 0)
            ? 0
            : creatorsList.results!.length,
        itemBuilder: (BuildContext context, int index) {
          var creatorItem = creatorsList.results![index];

          return ListTile(
            title: Text(creatorItem.name!),
            subtitle: Wrap(
              spacing: 10,
              children: List<Widget>.generate(
                  creatorItem.positions!.length,
                  (index) => Chip(
                      label: Text(toBeginningOfSentenceCase(
                          creatorItem.positions![index].name)!))),
            ),
            isThreeLine: true,
            onTap: () {},
          );
        },
      ),
    );
  }
}
