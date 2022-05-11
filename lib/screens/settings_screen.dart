import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text('Rate RAWG Flutter'),
              onTap: () => null,
            ),
            ListTile(
              title: Text('Share RAWG Flutter'),
              onTap: () => null,
            ),
            ListTile(
              title: Text('Send Feedback'),
              onTap: () => null,
            ),
            ListTile(
              title: Text('Open Source Licenses'),
              onTap: () => showLicensePage(
                  context: context, applicationVersion: "0.0.1"),
            ),
            ListTile(
              title: Text('Data provided by RAWG'),
              subtitle: Text('https://rawg.io/'),
              onTap: () {},
            ),
            Expanded(
              child: Container(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: <Widget>[
                  Text('Created by Jonathan Thomas Musiitwa',
                      style: Theme.of(context).textTheme.overline),
                  Text(
                    'Built with ❤ in Flutter ',
                    style: Theme.of(context)
                        .textTheme
                        .overline!
                        .copyWith(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
