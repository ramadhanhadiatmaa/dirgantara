import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../data/constants/color.dart';
import '../../../data/constants/images_string.dart';
import '../../../data/widgets/widget_button.dart';
import '../../../data/widgets/widget_images.dart';
import '../../../data/widgets/widget_logo.dart';
import '../../../data/widgets/widget_text.dart';
import '../../../routes/app_pages.dart';
import '../controllers/getstarted_controller.dart';

class GetstartedView extends GetView<GetstartedController> {
  const GetstartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Logo(),
          const SizedBox(
            height: 60,
          ),
          const ImageWid(
            image: iStarted,
            height: 260,
            width: 198,
          ),
          const SizedBox(
            height: 20,
          ),
          const TextWid(
            text: 'WELCOME',
            color: cBlue,
            size: 30,
            weight: FontWeight.bold,
          ),
          const TextWid(
            text:
                'Do you need an application to predict\nthe weather before you go?',
            color: cBlue,
            size: 16,
            weight: FontWeight.w300,
            align: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          ButtonWid(
            press: () => Get.offAndToNamed(Routes.login),
            text: 'Login',
          ),
        ],
      ),
    );
  }
}
