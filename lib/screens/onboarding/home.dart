import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zuri/screens/onboarding/login.dart';
import 'package:zuri/utilities/colors.dart';
import '../../utilities/dimensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
                onPressed: () {
                  signOut();
                  Get.snackbar(
                    'Logging out',
                    'Log out Successful',
                    isDismissible: true,
                    snackPosition: SnackPosition.BOTTOM,
                  );
                  Get.to(() => const LoginScreen());
                },
                child: const Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 16),
                )),
          )
        ],
        backgroundColor: AppColors.royalOrange,
        toolbarHeight: 80,
        title: const Text('HOME SCREEN'),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/shopping_cart.png'),
            ),
            SizedBox(
              height: Dimensions.height20 * 2,
            ),
            const Text(
              'Shopping Made Easy With ZURI BOARD',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Dimensions.height15,
            ),
            const Text(
              'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: Dimensions.height10 * 3,
            ),
          ],
        ),
      ),
    );
  }
}
