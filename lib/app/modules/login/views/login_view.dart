import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/constants/color.dart';
import '../../../data/widgets/widget_button.dart';
import '../../../data/widgets/widget_logo.dart';
import '../../../data/widgets/widget_text.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  final box = GetStorage;
  final LoginController loginC = Get.put(LoginController());

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
                            text: 'Log In',
                            color: Colors.black,
                            size: 24,
                            weight: FontWeight.w900,
                          ),
                          TextWid(
                            text: 'Login to Continue using the app',
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
                    controller: loginC.emailC,
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
                      controller: loginC.passC,
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
                                  : Icons.remove_red_eye))),
                    ),
                  ),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 200,
                          child: CheckboxListTile(
                            value: loginC.isRemember.value,
                            onChanged: (value) {
                              loginC.isRemember.toggle();
                            },
                            title: const TextWid(
                              text: "Remember Password",
                              color: Colors.grey,
                              size: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ButtonWid(
                    press: () => Get.offAndToNamed(
                      Routes.home,
                    ),
                    text: 'LOGIN',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      onPressed: () => Get.toNamed(
                            Routes.signUp,
                          ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWid(
                            text: "Don’t have an account? ",
                            color: cGrey,
                            size: 16,
                          ),
                          TextWid(
                            text: 'Sign Up',
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
