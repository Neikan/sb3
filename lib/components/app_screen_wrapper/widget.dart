import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sb3/utils/common.dart';

class AppScreenWrapper extends StatelessWidget {
  final Widget widget;

  const AppScreenWrapper({
    Key? key,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final brightness = getStatusBarBrightness();

    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: brightness,
          statusBarBrightness: brightness,
        ),
        child: SafeArea(
          child: widget,
        ),
      ),
    );
  }
}
