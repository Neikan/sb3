import 'package:flutter/material.dart';

import 'package:sb3/components/app_screen_wrapper/widget.dart';

import 'package:sb3/components/app_svg_image/widget.dart';

class ScreenSvg extends StatelessWidget {
  const ScreenSvg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScreenWrapper(
      widget: Center(
        child: AppSvgImage(
          name: 'flutter',
          size: 100,
        ),
      ),
    );
  }
}
