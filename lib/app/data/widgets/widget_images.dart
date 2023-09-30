import 'package:flutter/material.dart';

class ImageWid extends StatelessWidget {
  final double? height;
  final double? width;
  final String image;
  const ImageWid({
    super.key,
    required this.image,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
