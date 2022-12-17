import 'package:flutter/material.dart';

import 'package:sb3/screens/screen_svg.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const ScreenSvg(),
    );
  }
}
