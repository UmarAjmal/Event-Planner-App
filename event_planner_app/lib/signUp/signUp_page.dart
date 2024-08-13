// import 'package:event_planner_app/Firebase_Auth_Implementation/firebase_auth_services.dart';
// import 'package:event_planner_app/HomeScreen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class SignupPage extends StatefulWidget {
//   const SignupPage({super.key});
//
//
//   @override
//   State<SignupPage> createState() => _SignupPageState();
// }
//
// final FirebaseAuthServices _auth = FirebaseAuthServices();
// TextEditingController _userNameController = TextEditingController();
// TextEditingController _emailController = TextEditingController();
// TextEditingController _passwordController = TextEditingController();
//
// void dispose()
// {
//   _emailController.dispose();
//   _userNameController.dispose();
//   _passwordController.dispose();
// }
//
// class _SignupPageState extends State<SignupPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Sign Up"),
//       ),
//       body: Column(
//         children: [
//           TextFormField(
//             controller: _userNameController,
//             decoration: InputDecoration(
//               label: Text("User Name"),
//             )
//           ),
//           SizedBox(height: 10),
//           TextFormField(
//               controller: _emailController,
//               decoration: InputDecoration(
//                 label: Text("User emial"),
//               )
//           ),
//           SizedBox(height: 10),
//           TextFormField(
//               controller: _passwordController,
//               decoration: InputDecoration(
//                 label: Text("User password"),
//               )
//           ),
//           SizedBox(height: 10),
//           ElevatedButton(onPressed: () => _signUp(context), child: Text("Sign Up")),
//
//
//         ],
//       ),
//     );
//   }
// }
//
//
// void _signUp(BuildContext context) async {
//   String email = _emailController.text.trim();
//   String password = _passwordController.text.trim();
//   String userName = _userNameController.text.trim();
//
//   User? user = await _auth.signUpWithEmailAndPassword(email, password);
//
//   if (user != null) {
//     print("User Created");
//     Navigator.pushNamed(context, HomeScreen() as String);
//   } else {
//     print("User Not Created");
//   }
// }

//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_signin_button/button_list.dart';
// import 'package:flutter_signin_button/button_view.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'Firebase_Auth_Implementation/firebase_auth_services.dart';
// import 'HomeScreen.dart';
// import 'HomeScreen2.dart';
// // import 'firebase_auth_services.dart';
//
// class SignupPage extends StatefulWidget {
//   SignupPage({super.key});
//
//   @override
//   _SignupPageState createState() => _SignupPageState();
// }
//
// class _SignupPageState extends State<SignupPage> {
//   final FirebaseAuth auth = FirebaseAuth.instance;
//   final GoogleSignIn googleSignIn = GoogleSignIn();
//   final FirebaseAuthServices _authServices = FirebaseAuthServices();
//
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//
//   Future<void> _signingWithGoogle() async {
//     try {
//       final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
//       if (googleSignInAccount != null) {
//         final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
//         final AuthCredential authCredential = GoogleAuthProvider.credential(
//           idToken: googleSignInAuthentication.idToken,
//           accessToken: googleSignInAuthentication.accessToken,
//         );
//         await auth.signInWithCredential(authCredential);
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => HomeScreen()),
//         );
//       }
//     } catch (e) {
//       print("Error: $e");
//     }
//   }
//
//   Future<void> _signUpWithEmail(BuildContext context) async {
//     String email = _emailController.text.trim();
//     String password = _passwordController.text.trim();
//
//     User? user = await _authServices.signUpWithEmailAndPassword(email, password);
//
//     if (user != null) {
//       print("User Created");
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => HomeScreen()),
//       );
//     } else {
//       print("User Not Created");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.deepOrange,
//         title: Text("Sign Up"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: double.infinity,
//               height: 50,
//               color: Colors.deepOrange,
//               child: TextFormField(
//                 controller: _emailController,
//                 decoration: InputDecoration(
//                   labelText: "Email",
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Container(
//               width: double.infinity,
//               height: 50,
//               color: Colors.deepOrange,
//               child: TextFormField(
//                 controller: _passwordController,
//                 decoration: InputDecoration(
//                   labelText: "Password",
//                 ),
//                 obscureText: true,
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => _signUpWithEmail(context),
//               child: Text("Sign Up with Email",style: TextStyle(color: Colors.black,)),
//               style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
//             ),
//             SizedBox(height: 20),
//             SignInButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//               Buttons.Google,
//               onPressed: () => _signingWithGoogle(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../Firebase_Auth_Implementation/controler/firebase_auth_controler.dart';
// // import 'auth_controller.dart';
//
// class SignupPage extends StatelessWidget {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final AuthController _authController = Get.find();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepOrange,
//         centerTitle: true,
//         title: Text("Sign Up"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: double.infinity,
//               height: 50,
//               color: Colors.deepOrange,
//               child: TextFormField(
//                 controller: _emailController,
//                 decoration: InputDecoration(
//                   labelText: "Email",
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Container(
//               width: double.infinity,
//               height: 50,
//               color: Colors.deepOrange,
//               child: TextFormField(
//                 controller: _passwordController,
//                 decoration: InputDecoration(
//                   labelText: "Password",
//                 ),
//                 obscureText: true,
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => _authController.signUpWithEmail(
//                   _emailController.text.trim(),
//                   _passwordController.text.trim()),
//               child: Text(
//                 "Sign Up",
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//               style:
//                   ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => _authController.signInWithGoogle(),
//               child: Text(
//                 "Sign Up with Google",
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//               style:
//                   ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () => _authController.signInWithFacebook(),
//               child: Text(
//                 "Sign Up with Facebook",
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//               style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }







import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Firebase_Auth_Implementation/controler/firebase_auth_controler.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthController _authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text("Sign Up"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.deepOrange,
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.deepOrange,
              child: TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _authController.signUpWithEmail(
                  _emailController.text.trim(),
                  _passwordController.text.trim()),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style:
              ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _authController.signInWithGoogle(),
              child: Text(
                "Sign Up with Google",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style:
              ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _authController.signInWithFacebook(),
              child: Text(
                "Sign Up with Facebook",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.toNamed('/phone-auth'), // Navigate to PhoneAuthPage
              child: Text(
                "Sign Up with Phone Number",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
            ),
          ],
        ),
      ),
    );
  }
}
