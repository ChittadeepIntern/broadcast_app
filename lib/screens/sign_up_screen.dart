import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import '../controllers/sign_up_controller.dart';

class SignUpScreen extends GetView<SignUpController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
          key: controller.formKey,
          child: Column(
            children: [
              // Username Field
              FormBuilderTextField(
                name: 'username',
                controller: controller.usernameController,
                decoration: InputDecoration(labelText: 'Username'),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(3),
                ]),
              ),
              SizedBox(height: 16),

              // Email Field
              FormBuilderTextField(
                name: 'email',
                decoration: InputDecoration(labelText: 'Email'),
                controller: controller.emailController,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ]),
              ),
              SizedBox(height: 16),

              // Password Field
              FormBuilderTextField(
                name: 'password',
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
                controller: controller.passwordController,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(6),
                ]),
              ),
              SizedBox(height: 16),

              // Confirm Password Field
              FormBuilderTextField(
                name: 'confirm_password',
                obscureText: true,
                decoration: InputDecoration(labelText: 'Confirm Password'),
                controller: controller.confirmPasswordController,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                      (val) {
                    if (val != controller.formKey.currentState?.fields['password']?.value) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
                ]),
              ),
              SizedBox(height: 24),

              // Sign Up Button
              ElevatedButton(
                onPressed: controller.signUp,
                child: Text("Sign Up"),
              ),

              GestureDetector(
                onTap: () {
                  // Navigate to the login screen
                  Get.offAndToNamed('/signIn'); // Replace with your actual login screen
                },
                child: Text(
                  "Already have an account? Log in",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
