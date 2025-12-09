import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:tt1/profile_task/Advanced/menu_screen.dart';
import 'package:tt1/profile_task/Basics/basic_profile.dart';

class ProfileZoomDrawer extends StatefulWidget {
  const ProfileZoomDrawer({super.key, required this.controller});
  final ZoomDrawerController controller;

  @override
  State<ProfileZoomDrawer> createState() => _ProfileZoomDrawerState();
}

class _ProfileZoomDrawerState extends State<ProfileZoomDrawer> {
  final ZoomDrawerController _zoomDrawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      drawerShadowsBackgroundColor: Colors.teal,
      controller: _zoomDrawerController,
      borderRadius: 16,
      showShadow: true,
      angle: -5,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      shadowLayer1Color: Colors.grey.shade100,
      shadowLayer2Color: Colors.grey.shade500,
      mainScreenTapClose: true,
      menuScreenWidth: MediaQuery.of(context).size.width * 0.6,
      // mainScreenOverlayColor: Colors.teal,
      menuScreen: MenuScreen(),
      menuScreenOverlayColor: Colors.tealAccent,
      mainScreen: BasicProfile(),
    );
  }
}
