// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

class AppSvgImage extends StatelessWidget {
  final String name;
  final String? semanticsLabel;
  final Color? color, bgColor;
  final double? size, bgSize;

  const AppSvgImage({
    Key? key,
    required this.name,
    this.bgColor,
    this.color,
    this.semanticsLabel,
    this.size,
    this.bgSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget icon = SvgPicture.asset(
      'assets/images/$name.svg',
      semanticsLabel: semanticsLabel,
      height: size,
      width: size,
      color: color,
    );

    if (bgColor != null && bgSize != null) {
      return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bgColor,
        ),
        height: bgSize,
        width: bgSize,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: icon,
        ),
      );
    }

    return icon;
  }
}
