import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:zuri/repository/authentication_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //TextField controllers to get text from textfields
  final fullname = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final password = TextEditingController();

  //function

  void createAccount(
    String email,
    String password,
  ) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }
}
