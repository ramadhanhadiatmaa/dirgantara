import 'package:dirgantara/app/data/constants/color.dart';
import 'package:dirgantara/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/getstarted_controller.dart';

class GetstartedView extends GetView<GetstartedController> {
  const GetstartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 51,
                width: 60,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/logo.png',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'irgantara',
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  color: cBlue,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            height: 260,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/image_started.png',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'WELCOME',
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                fontSize: 30,
                color: cBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Do you need an application to predict\nthe weather before you go?',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                fontSize: 16,
                color: cBlue,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: ElevatedButton(
              onPressed: () => Get.offAndToNamed(
                Routes.login,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: cBlue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
