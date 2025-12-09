import 'package:flutter/material.dart';

class CustomProfileWidget extends StatelessWidget {
  const CustomProfileWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Container(
        height: 75,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
        child: Card(
          elevation: 3,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.settings, size: 28),
                Text('$title', style: TextStyle(fontSize: 24)),
                Icon(Icons.arrow_forward_ios, size: 28),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
