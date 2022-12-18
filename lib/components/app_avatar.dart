// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:transparent_image/transparent_image.dart';

class AppAvatar extends StatelessWidget {
  final double? size, bgSize;

  const AppAvatar({
    Key? key,
    this.size,
    this.bgSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            const Center(
              child: CircularProgressIndicator(
                color: Colors.grey,
                strokeWidth: 3.0,
              ),
            ),
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: 'https://neikan.pro/img/foto/me.png',
              imageErrorBuilder: (context, error, stackTrace) => Image.asset(
                'assets/images/skeleton_avatar.jpg',
              ),
            )
          ],
        ),
      ),
    );
  }
}
