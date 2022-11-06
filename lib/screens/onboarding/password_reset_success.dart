import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zuri/screens/onboarding/login.dart';
import 'package:zuri/utilities/colors.dart';

class PasswordResetSuccessScreen extends StatelessWidget {
  const PasswordResetSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/mail.png'),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Check Your Mail',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Check your mail for an email containing instructions to reset you password',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                  onPressed: () {
                    Get.to(() => const LoginScreen());
                  },
                  child: const Text(
                    'return to sign in ',
                    style:
                        TextStyle(color: AppColors.royalOrange, fontSize: 18),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
