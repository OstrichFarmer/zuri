import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zuri/screens/onboarding/password_reset_success.dart';
import 'package:zuri/widgets/custom_button.dart';
import 'package:zuri/widgets/custom_textfield.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 100,
            right: 20,
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'FORGOT PASSWORD',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Please enter registered email address below to get a reset password email.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextField(
                  hintText: 'Enter Email Address', onchanged: () {}),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                  title: 'Send',
                  ontap: () {
                    Get.to(() => const PasswordResetSuccessScreen());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
