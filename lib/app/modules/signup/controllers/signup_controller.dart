import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController userC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController repassC = TextEditingController();

  RxBool isHidden = true.obs;
}
