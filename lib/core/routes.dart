import 'package:broadcast_app/core/bindings.dart';
import 'package:broadcast_app/controllers/sign_in_controller.dart';
import 'package:broadcast_app/screens/admin/admin_allow_users.dart';
import 'package:broadcast_app/screens/admin/admin_broadcast_message.dart';
import 'package:broadcast_app/screens/admin/admin_broadcast_reminders.dart';
import 'package:broadcast_app/screens/admin/admin_dashboard.dart';
import 'package:broadcast_app/screens/sign_in_screen.dart';
import 'package:broadcast_app/screens/sign_up_screen.dart';
import 'package:broadcast_app/screens/user/user_broadcast_notifications.dart';
import 'package:broadcast_app/screens/user/user_broadcast_reminders.dart';
import 'package:broadcast_app/screens/user/user_dashboard.dart';
import 'package:broadcast_app/screens/user/user_profile.dart';
import 'package:get/get.dart';

import '../screens/splash_screen.dart';

class Routes {
  static final allRoutes = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/signUp', page: () => SignUpScreen(),binding: SignUpBinding()),
    GetPage(name: '/signIn', page: ()=>SignInScreen(), binding: SignInBinding()),
    GetPage(name: '/adminDashboard', page: ()=>AdminDashboardScreen()),
    GetPage(name: '/adminAllowUsers', page: ()=>AdminAllowUsersScreen()),
    GetPage(name: '/adminBroadcastMessage', page: ()=>AdminBroadcastMessageScreen()),
    GetPage(name: '/adminBroadcastReminder', page: ()=>AdminBroadcastReminderScreen()),
    GetPage(name: '/userDashboard', page: ()=>UserDashboardScreen()),
    GetPage(name: '/userProfile', page: ()=> UserProfileScreen()),
    GetPage(name: '/userBroadcastNotifications', page: ()=>UserBroadcastNotificationsScreen()),
    GetPage(name: '/userBroadcastReminders', page: ()=>UserBroadcastReminderScreen())
  ];
}
