import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/color.dart';
import '../../../data/widgets/widget_button.dart';
import '../../../data/widgets/widget_logo.dart';
import '../../../data/widgets/widget_text.dart';
import '../../../routes/app_pages.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  SignupView({Key? key}) : super(key: key);

  final SignupController signupC = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Logo(),
                  const SizedBox(
                    height: 50,
                  ),
                  const Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWid(
                            text: 'Sign Up',
                            color: Colors.black,
                            size: 24,
                            weight: FontWeight.w900,
                          ),
                          TextWid(
                            text: 'Signup to use the app',
                            color: cGrey,
                            size: 14,
                            weight: FontWeight.w300,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      TextWid(
                        text: 'Email',
                        color: Colors.black,
                        size: 16,
                        weight: FontWeight.w700,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    autocorrect: false,
                    controller: signupC.emailC,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                      labelText: 'Email',
                      labelStyle: const TextStyle(
                        color: cGrey,
                      ),
                      prefixIcon: const Icon(
                        Icons.mail_outline_outlined,
                        color: cBlue,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      TextWid(
                        text: 'Username',
                        color: Colors.black,
                        size: 16,
                        weight: FontWeight.w700,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    autocorrect: false,
                    controller: signupC.userC,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                      labelText: 'Username',
                      labelStyle: const TextStyle(
                        color: cGrey,
                      ),
                      prefixIcon: const Icon(
                        Icons.mail_outline_outlined,
                        color: cBlue,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      TextWid(
                        text: 'Password',
                        color: Colors.black,
                        size: 16,
                        weight: FontWeight.w700,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Obx(
                    () => TextField(
                      autocorrect: false,
                      controller: signupC.passC,
                      obscureText: controller.isHidden.value,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                          color: cGrey,
                        ),
                        prefixIcon: const Icon(
                          Icons.key_outlined,
                          color: cBlue,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            controller.isHidden.toggle();
                          },
                          icon: Icon(controller.isHidden.isFalse
                              ? Icons.remove_red_eye_outlined
                              : Icons.remove_red_eye),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      TextWid(
                        text: 'RePassword',
                        color: Colors.black,
                        size: 16,
                        weight: FontWeight.w700,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Obx(
                    () => TextField(
                      autocorrect: false,
                      controller: signupC.passC,
                      obscureText: controller.isHidden.value,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        labelText: 'RePassword',
                        labelStyle: const TextStyle(
                          color: cGrey,
                        ),
                        prefixIcon: const Icon(
                          Icons.key_outlined,
                          color: cBlue,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            controller.isHidden.toggle();
                          },
                          icon: Icon(controller.isHidden.isFalse
                              ? Icons.remove_red_eye_outlined
                              : Icons.remove_red_eye),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ButtonWid(
                    press: () => Get.offAndToNamed(
                      Routes.login,
                    ),
                    text: 'SIGNUP',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () => Get.toNamed(
                            Routes.signUp,
                          ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWid(
                            text: "Already have an account? ",
                            color: cGrey,
                            size: 16,
                          ),
                          TextWid(
                            text: 'Sign In',
                            color: cBlue,
                            size: 16,
                            weight: FontWeight.bold,
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
