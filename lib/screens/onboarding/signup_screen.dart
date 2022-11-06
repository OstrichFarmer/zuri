import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zuri/screens/onboarding/home.dart';
import '../../../widgets/custom_textfield.dart';
import '../../utilities/colors.dart';
import '../../utilities/constants.dart';
import '../../utilities/dimensions.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_password_form.dart';
import 'login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;

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
                    'Create Account',
                    style: kHeadingStyling,
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Text(
                    'Sign up to get started',
                    style: kHeading2styling,
                  ),
                  SizedBox(
                    height: Dimensions.height15,
                  ),
                  const Text('Name'),
                  SizedBox(
                    height: Dimensions.height5,
                  ),
                  CustomTextField(
                    hintText: 'Enter name ',
                    onchanged: () {},
                  ),
                  SizedBox(
                    height: Dimensions.height25,
                  ),
                 const  Text('Email'),
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
                 const  Text('Phone'),
                  SizedBox(
                    height: Dimensions.height5,
                  ),
                  CustomTextField(
                    hintText: 'Enter phone number ',
                    onchanged: () {},
                  ),
                  SizedBox(
                    height: Dimensions.height25,
                  ),
                  CustomPasswordTextBox((_) {}, 'Enter password'),
                  SizedBox(
                    height: Dimensions.height16,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: AppColors.royalOrange,
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(
                            fontSize: Dimensions.font16,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height20 * 2,
                  ),
                  Center(
                    child: CustomButton(
                        title: 'Create Account',
                        ontap: () {
                          Get.to(() => const HomeScreen());
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: kHeading2styling,
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(() =>const  LoginScreen());
                          },
                          child: Text(
                            'Log in',
                            style: kHeading2styling,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
