import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zuri/screens/onboarding/forgot_password.dart';
import 'package:zuri/screens/onboarding/home.dart';
import 'package:zuri/utilities/colors.dart';
import '../../../utilities/constants.dart';
import '../../../utilities/dimensions.dart';
import '../../../widgets/custom_password_form.dart';
import '../../../widgets/custom_textfield.dart';
import '../../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  Dimensions.height16,
                  Dimensions.height60,
                  Dimensions.height16,
                  Dimensions.height20),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign In',
                      style: kHeadingStyling,
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Text(
                      'Log in to your account to continue ',
                      style: kHeading2styling,
                    ),
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                    const Text('Email'),
                    SizedBox(
                      height: Dimensions.height5,
                    ),
                    CustomTextField(
                      hintText: 'Enter email address ',
                      onchanged: () {},
                    ),
                    SizedBox(
                      height: Dimensions.height25,
                    ),
                    const Text('Password'),
                    SizedBox(
                      height: Dimensions.height5,
                    ),
                    CustomPasswordTextBox((_) {}, 'Enter password'),
                    SizedBox(
                      height: Dimensions.height16,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Get.to(() => const ForgotPasswordScreen());
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              fontSize: Dimensions.height16,
                              color: AppColors.royalOrange),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height50,
                    ),
                    Center(
                      child: CustomButton(
                          title: 'Sign In',
                          ontap: () {
                            Get.to(() => const HomeScreen());
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
