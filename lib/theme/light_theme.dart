import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LightTheme extends StatefulWidget {
  const LightTheme({Key? key}) : super(key: key);

  @override
  _LightThemeState createState() => _LightThemeState();
}

class _LightThemeState extends State<LightTheme> {
  TextStyle _style = TextStyle(fontSize: 55);
  bool _isDark = false;
  ThemeData _light = ThemeData.light().copyWith(
    primaryColor: Colors.green,
  );
  ThemeData _dark = ThemeData.dark().copyWith(
    primaryColor: Colors.blueGrey,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: _dark,
      theme: _light,
      themeMode: _isDark ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: CupertinoSwitch(
                  value: _isDark,
                  onChanged: (v) {
                    setState(() {
                      _isDark = !_isDark;
                    });
                  },
                ),
              ),
              Text('Dark'),
            ],
          ),
        ),
      ),
    );
  }
}


