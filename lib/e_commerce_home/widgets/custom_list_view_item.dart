import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 52,
      backgroundColor: Colors.grey,
      child: CircleAvatar(
        radius: 49,
        backgroundImage: AssetImage('Assets/images/trees.jpg'),
      ),
    );
  }
}
