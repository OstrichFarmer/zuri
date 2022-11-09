import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zuri/screens/onboarding/forgot_password.dart';
import 'package:zuri/screens/onboarding/home.dart';
import 'package:zuri/screens/onboarding/signup_screen.dart';
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
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: _emailController.text, password: _passwordController.text)
        .then((value) {
      Get.snackbar('Login in successful', 'Going to homescreen',
          isDismissible: true, snackPosition: SnackPosition.BOTTOM);
      Get.to(() => const HomeScreen());
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                    controller: _emailController,
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
                  CustomPasswordTextBox(
                    controller: _passwordController,
                    onchanged: (_) {},
                    hintText: 'Enter password',
                  ),
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
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Center(
                    child: CustomButton(
                        title: 'Sign In',
                        ontap: () {
                          signIn();
                        }),
                  ),
                  SizedBox(
                    height: Dimensions.height30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont have an account?',
                        style: TextStyle(
                            fontSize: Dimensions.height16,
                            fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(() => const SignUpScreen());
                          },
                          child: Text(
                            'Create account',
                            style: TextStyle(
                                fontSize: Dimensions.height16,
                                color: AppColors.royalOrange),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
