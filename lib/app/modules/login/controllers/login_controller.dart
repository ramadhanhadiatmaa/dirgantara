import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  RxBool isHidden = true.obs;
  RxBool isRemember = false.obs;

  final box = GetStorage();

  void save() {
    if (isRemember.isTrue) {
      box.write("dataAuth", {
        "email": emailC.text,
        "password": passC.text,
      });
    }
  }
}
