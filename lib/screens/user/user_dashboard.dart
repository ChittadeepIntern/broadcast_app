import 'package:broadcast_app/widgets/dashboard_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Allow Users Card
            DashboardCard(name: "Broadcast Notifications", icon: Icons.notifications, route: '/userBroadcastNotifications',),
            SizedBox(height: 16),

            // Broadcast Message Card
            DashboardCard(name: "Reminder Notifications", icon: Icons.watch, route: '/userBroadcastReminders'),
            SizedBox(height: 16),

            // Broadcast Reminder Card
            DashboardCard(name: "See profile", icon: Icons.person, route: '/userProfile')
          ],
        ),
      ),
    );
  }
}
