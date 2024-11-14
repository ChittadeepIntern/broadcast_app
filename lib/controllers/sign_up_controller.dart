import 'dart:developer';

import 'package:broadcast_app/core/variables.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SignUpController extends GetxController {
  final formKey = GlobalKey<FormBuilderState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final usernameController = TextEditingController();

  // Function to handle form submission
  void signUp() {
    if (formKey.currentState?.saveAndValidate() ?? false) {
      // Form data is valid
      final formData = formKey.currentState?.value;
      final email = formData?['email'];
      final username = formData?['username'];
      final password = formData?['password'];
      // Add your sign-up logic here
      _createUserWithEmailAndPassword(email, password);
    } else {
      // Form data is invalid
      Get.snackbar("Error", "Please check your inputs");
    }
  }

  Future<void> _createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((currentUser) async {
        user = currentUser.user;
      }).then((_) {
        databaseRef.child(user!.uid).set({
          "uid": user!.uid,
          "username": usernameController.text.trim(),
          "createdAt": DateTime.now().toString(),
          "email": emailController.text.trim(),
          "userType": "user",
          "isApproved": false,
          "token": ''
        });
      }).then((_) {
        Get.toNamed('/signIn');
      });
    } catch (e) {
      log(e.toString());
      Get.snackbar("SignUp failed", e.toString()); // Error message
    }
  }
}
