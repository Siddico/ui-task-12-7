import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade50,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Text(
                'Menu Screen',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              CustomListTile(icon: Icons.person, title: 'Profile'),
              const SizedBox(height: 15),
              CustomListTile(icon: Icons.phone, title: 'Phone Number'),
              const SizedBox(height: 15),
              CustomListTile(icon: Icons.email, title: 'Email'),
              Expanded(child: const SizedBox()),
              CustomListTile(
                icon: Icons.logout,
                title: 'Logout',
                color: Colors.red,
                textColor: Colors.red,
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget CustomListTile({
    required IconData icon,
    required String title,
    Color color = const Color.fromARGB(255, 27, 68, 102),
    Color textColor = Colors.black,
  }) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
      child: Card(
        color: Colors.tealAccent,
        elevation: 3,
        child: ListTile(
          leading: Icon(icon, color: color, size: 28),
          title: Text(
            "$title",
            style: TextStyle(color: textColor, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
