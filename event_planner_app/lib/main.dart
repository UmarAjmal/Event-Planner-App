// import 'package:event_planner_app/HomeScreen.dart';
// import 'package:event_planner_app/signUp/signUp_page.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
//
// import 'firebase_options.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home:  SignupPage(),
//     );
//   }
// }




import 'package:event_planner_app/phone_screen.dart';
import 'package:event_planner_app/signUp/signUp_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Firebase_Auth_Implementation/controler/firebase_auth_controler.dart';
import 'HomeScreen2.dart';
import 'Login/login_screen.dart';
import 'firebase_options.dart';
// import 'auth_controller.dart';
// import 'home_screen.dart';
// import 'login_page.dart';
// import 'signup_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(AuthController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SignupPage()),
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/home', page: () => HomeScreen2()),
        GetPage(name: '/phone-auth', page: () => PhoneAuthPage()),
      ],
    );
  }
}
