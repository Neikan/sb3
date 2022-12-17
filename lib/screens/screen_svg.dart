// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';

// Project imports:
import 'package:sb3/components/app_screen_wrapper/widget.dart';
import 'package:sb3/components/app_svg_image/widget.dart';

class ScreenSvg extends StatelessWidget {
  const ScreenSvg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScreenWrapper(
      widget: Center(
        child: CarouselSlider(
          items: const [
            AppSvgImage(
              name: 'flutter',
              size: 100,
            ),
            AppSvgImage(
              name: 'dart',
              size: 50,
              bgSize: 100,
              bgColor: Colors.black,
            ),
          ],
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
          ),
        ),
      ),
    );
  }
}
