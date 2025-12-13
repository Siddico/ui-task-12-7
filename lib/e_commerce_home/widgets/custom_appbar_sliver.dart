import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:tt1/profile_task/Advanced/profile_zoom_drawer.dart';

class CustomAppBarSliver extends StatelessWidget {
  CustomAppBarSliver({super.key});
  final ZoomDrawerController controller = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      color: const Color.fromARGB(255, 12, 54, 89),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16,
              top: 40,
              bottom: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: Icon(Icons.menu, size: 26, color: Colors.white),
                ),
                Center(
                  child: Text(
                    'Appbar',
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                ),
                SizedBox(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Text. \'Search\'"...',
                hintStyle: TextStyle(fontSize: 16, color: Colors.grey.shade400),
                suffix: Icon(
                  Icons.search,
                  color: Colors.grey.shade400,
                  size: 28,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
