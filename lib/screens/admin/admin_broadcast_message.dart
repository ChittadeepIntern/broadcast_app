import 'package:flutter/material.dart';

class AdminBroadcastMessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Broadcast Message"),
      ),
      body: Center(
        child: Text(
          "Broadcast Message Screen",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
