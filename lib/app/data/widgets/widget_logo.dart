import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../constants/images_string.dart';
import 'widget_images.dart';
import 'widget_text.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageWid(
          image: iLogo,
          height: 51,
          width: 60,
        ),
        SizedBox(
          width: 5,
        ),
        TextWid(
          text: 'irgantara',
          color: cBlue,
          size: 24,
          weight: FontWeight.w600,
        ),
      ],
    );
  }
}
