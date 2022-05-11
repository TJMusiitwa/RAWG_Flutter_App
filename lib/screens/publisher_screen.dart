import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:rawg_flutter/data/base.dart';
import 'package:rawg_flutter/models/publisher.dart';

import 'settings_screen.dart';

class PublishersScreen extends StatefulWidget {
  @override
  _PublishersScreenState createState() => _PublishersScreenState();
}

class _PublishersScreenState extends State<PublishersScreen> {
  Publishers publishersList = Publishers();

  void getPublishersData() async {
    var publishersResult = await HttpService().getPublishers();
    var publishersMap = json.decode(publishersResult);
    setState(() => publishersList = Publishers.fromJson(publishersMap));
  }

  @override
  void initState() {
    super.initState();
    getPublishersData();
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
        title: Text('Publishers'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: (publishersList == null ||
                publishersList.results == null ||
                publishersList.results!.length == 0)
            ? 0
            : publishersList.results!.length,
        itemBuilder: (BuildContext context, int index) {
          var publisherItem = publishersList.results![index];
          return ListTile(
            title: Text(publisherItem.name!),
            subtitle: Text(
                "Total Games Count: ${publisherItem.gamesCount.toString()}"),
            onTap: () {},
          );
        },
      ),
    );
  }
}
