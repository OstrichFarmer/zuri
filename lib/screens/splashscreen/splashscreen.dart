import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utilities/colors.dart';
import '../onboarding/signup_screen.dart';

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
          'ZURI BOARD',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 35),
        ),
      ),
    );
  }
}