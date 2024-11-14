import 'package:broadcast_app/widgets/dashboard_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminDashboardScreen extends StatelessWidget {
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
            DashboardCard(name: "Allow Users", icon: Icons.person_add, route: '/adminAllowUsers',),
            SizedBox(height: 16),

            // Broadcast Message Card
            DashboardCard(name: "Broadcast Message", icon: Icons.message, route: '/adminBroadcastMessage'),
            SizedBox(height: 16),

            // Broadcast Reminder Card
            DashboardCard(name: "Broadcast Reminder", icon: Icons.notifications, route: '/adminBroadcastReminder')
          ],
        ),
      ),
    );
  }
}
