import 'package:citymartapp/screens/onboarding/onboarding.dart';
import 'package:citymartapp/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetosplash();
  }

  _navigatetosplash() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    if (!mounted) return;
    Get.to(() => SignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.royalOrange,
      body: Center(
        child: Text(
          'CITY MART',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 35),
        ),
      ),
    );
  }
}
