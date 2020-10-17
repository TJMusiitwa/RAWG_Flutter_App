import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:rawg_flutter/rawg_nav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final cupertinoTheme = CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: CupertinoColors.systemGreen,
  );
  final materialTheme = ThemeData(
    primaryColor: Colors.black,
    accentColor: Colors.green,
    chipTheme: ChipThemeData(
      backgroundColor: Color(0x1f000000),
      brightness: Brightness.light,
      deleteIconColor: Color(0xde000000),
      disabledColor: Color(0x0c000000),
      labelPadding:
          EdgeInsets.only(top: 0.0, bottom: 0.0, left: 8.0, right: 8.0),
      labelStyle: TextStyle(
        color: Color(0xde000000),
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      padding: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
      secondaryLabelStyle: TextStyle(
        color: Color(0x3d000000),
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      secondarySelectedColor: Color(0x3d1c3857),
      selectedColor: Color(0x3d000000),
      shape: StadiumBorder(
          side: BorderSide(
        color: Color(0xff000000),
        width: 0.0,
        style: BorderStyle.none,
      )),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return PlatformProvider(
      builder: (context) => PlatformApp(
        localizationsDelegates: <LocalizationsDelegate<dynamic>>[
          DefaultMaterialLocalizations.delegate,
          DefaultWidgetsLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
        ],
        title: 'RAWG Flutter',
        home: RAWGNav(),
        material: (context, platform) => MaterialAppData(
          theme: materialTheme,
          themeMode: ThemeMode.light,
        ),
        cupertino: (context, platform) => CupertinoAppData(
          theme: cupertinoTheme,
        ),
      ),
      settings: PlatformSettingsData(iosUsesMaterialWidgets: true),
    );
  }
}
