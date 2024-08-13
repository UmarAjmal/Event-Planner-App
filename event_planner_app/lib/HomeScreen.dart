// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_signin_button/button_list.dart';
// import 'package:flutter_signin_button/button_view.dart';
// import 'package:google_sign_in/google_sign_in.dart';
//
// import 'HomeScreen2.dart';
//
// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});
//   final FirebaseAuth auth = FirebaseAuth.instance;
//   final GoogleSignIn googleSignIn = GoogleSignIn();
//
//   // Future<void> _signingWithGoogle(BuildContext context) async {
//   //   try {
//   //     final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
//   //     if (googleSignInAccount != null) {
//   //       final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
//   //       final AuthCredential authCredential = GoogleAuthProvider.credential(
//   //         idToken: googleSignInAuthentication.idToken,
//   //         accessToken: googleSignInAuthentication.accessToken,
//   //       );
//   //       await auth.signInWithCredential(authCredential);
//   //       Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2()));
//   //     }
//   //   } catch (e) {
//   //     print("Error: $e");
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("HOME"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // Center(
//           //   child: SignInButton(
//           //     Buttons.Google,
//           //     onPressed: () => _signingWithGoogle(context),
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }




