import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('Rate RAWG Flutter'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Share RAWG Flutter'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Send Feedback'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Open Source Licenses'),
              onTap: () => showLicensePage(
                  context: context, applicationVersion: "0.0.1"),
            ),
            ListTile(
              title: const Text('Data provided by RAWG'),
              subtitle: const Text('https://rawg.io/'),
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
