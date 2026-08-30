
import 'package:flutter/material.dart';

class AppCircularAvatar extends StatelessWidget {
  const AppCircularAvatar({
    super.key,
    this.size = 60,
    this.outlineColor = Colors.transparent,
    required this.image,
  });

  final double size;
  final Color outlineColor;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size + 10,
      width: size + 10,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(color: outlineColor, shape: BoxShape.circle),
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
        ),
      ),
    );
  }
}
