import 'package:flutter/material.dart';

class AdminAllowUsersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Allow Users"),
      ),
      body: Center(
        child: Text(
          "Allow Users Screen",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
