// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:zuri/screens/onboarding/home.dart';
// import 'package:zuri/screens/onboarding/login.dart';

// class MainPage extends StatelessWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             print(snapshot.data);
//             return const HomeScreen();
//           } else {
//             return const LoginScreen();
//           }
//         },
//       ),
//     );
//   }
// }
