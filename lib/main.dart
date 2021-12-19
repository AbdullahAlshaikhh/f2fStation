import 'package:f2f/splash/splash_screen.dart';
import 'package:f2f/theme/light_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'components/coustom_bottom_nav_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget example2 = SplashScreenView(
      navigateRoute: const BottomNavigate(),
      duration: 5000,
      imageSize: 130,
      imageSrc: "assets/images/flogo.png",
      text: "F2F STATION",
      textType: TextType.ColorizeAnimationText,
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,

        fontSize: 40.0,
      ),
      colors: [
        Color(0XFFf9a818),
        Color(0XFF1f2e46),
        Color(0XFFffffff),
      ],
      backgroundColor: Colors.white,
    );

    return MaterialApp(
      home: example2,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}
