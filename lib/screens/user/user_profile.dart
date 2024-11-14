import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Allow Users"),
      ),
      body: Center(
        child: Text(
          "User Profile Screen",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
