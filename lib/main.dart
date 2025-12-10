import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:tt1/Views/splash_View.dart';
import 'package:tt1/e_commerce_home/e_commerce_home_view.dart';
import 'package:tt1/profile_task/Advanced/profile_zoom_drawer.dart';
import 'package:tt1/profile_task/Basics/basic_profile.dart';
import 'package:tt1/task_login_screen/login_view.dart';
import 'package:tt1/task_ui_12_7_2025/task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ZoomDrawerController controller = ZoomDrawerController();
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      // home: const LoginScreen(),
      // home: const HomeScreen(),
      // home: const BasicProfile(),
      // home: ProfileZoomDrawer(controller: controller),
      home: const ECommerceHomeView(),
    );
  }
}
