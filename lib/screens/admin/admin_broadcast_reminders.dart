import 'package:flutter/material.dart';

class AdminBroadcastReminderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Broadcast Reminder"),
      ),
      body: Center(
        child: Text(
          "Broadcast Reminder Screen",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
