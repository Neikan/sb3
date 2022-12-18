// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sb3/components/app_header.dart';

class AppScreenWrapper extends StatelessWidget {
  final Widget widget;

  const AppScreenWrapper({
    Key? key,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: widget,
      ),
    );
  }
}
