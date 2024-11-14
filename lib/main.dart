import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const BroadcastApp());
}

class BroadcastApp extends StatelessWidget {
  const BroadcastApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Broadcast App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: Routes.allRoutes,
    );
  }
}
