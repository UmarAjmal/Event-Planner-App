import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Firebase_Auth_Implementation/controler/firebase_auth_controler.dart';
// import 'auth_controller.dart';

class HomeScreen2 extends StatelessWidget {
  final AuthController _authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text("Home"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => _authController.signOut(),
          ),
        ],
      ),
      body: Center(
        child: Text("Welcome to Home Screen"),
      ),
    );
  }
}
