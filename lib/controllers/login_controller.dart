import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  //TextField controllers to get text from textfields

  final email = TextEditingController();
  final password = TextEditingController();

  //function

  void login(
    String email,
    String password,
  ) {}
}
