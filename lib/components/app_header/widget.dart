import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sb3/components/app_avatar/widget.dart';

import 'package:sb3/utils/common.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final double? elevation;
  final String? title;

  const AppHeader({
    Key? key,
    this.title,
    this.elevation,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  AppBar build(BuildContext context) {
    final brightness = getStatusBarBrightness();

    return AppBar(
      elevation: elevation,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: brightness,
        statusBarBrightness: brightness,
      ),
      backgroundColor: Colors.white,
      title: Text(title ?? ''),
      leading: const AppAvatar(),
    );
  }
}
