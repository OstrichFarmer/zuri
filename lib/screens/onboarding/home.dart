import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zuri/database/database.dart';
import 'package:zuri/screens/onboarding/login.dart';
import 'package:zuri/utilities/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Database? db;
  List docs = [];
  initialise() {
    db = Database();
    db?.initialiase();
    db?.read().then((value) {
      setState(() {
        docs = value!;
      });
    });
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  void initState() {
    super.initState();
    initialise();
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
                    colorText: AppColors.royalOrange,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    isDismissible: true,
                    snackPosition: SnackPosition.TOP,
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
      body: docs.isEmpty
          ? const Center(
              child: CircularProgressIndicator(
                color: AppColors.royalOrange,
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 40,
              ),
              child: ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(docs[index]['name']),
                        trailing: Text(docs[index]['price']),
                      ),
                    );
                  }),
            ),
    );
  }
}
