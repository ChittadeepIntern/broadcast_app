// login_controller.dart
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../core/variables.dart';

class SignInController extends GetxController {
  final formKey = GlobalKey<FormBuilderState>();

  // Function to handle login
  void login() {
    if (formKey.currentState?.saveAndValidate() ?? false) {
      // Access form values
      final email = formKey.currentState?.fields['email']?.value;
      final password = formKey.currentState?.fields['password']?.value;

      _signInUserWithEmailAndPassword(email, password).then((_) =>
          Get.offNamed('/userDashboard'));

      // Navigate to the home screen or show a success message
    } else {
      Get.snackbar("Error", "Please complete the form correctly.");
    }
  }

  Future<void> _signInUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final cred = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = cred.user; // Success
    } catch (e) {
      log(e.toString()); // Error message
    }
  }
}
