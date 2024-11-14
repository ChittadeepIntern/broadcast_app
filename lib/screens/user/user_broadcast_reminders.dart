import 'package:flutter/material.dart';

class UserBroadcastReminderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Broadcast Reminder"),
      ),
      body: Center(
        child: Text(
          "User Broadcast Reminder Screen",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
