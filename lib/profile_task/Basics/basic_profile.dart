import 'package:flutter/material.dart';
import 'package:tt1/profile_task/Basics/custom_profile_widget.dart';

class BasicProfile extends StatelessWidget {
  const BasicProfile({super.key});
  List<String> get titles => ['Account Settings', 'Privacy', 'Logout'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: .5,
        backgroundColor: const Color.fromARGB(255, 11, 44, 72),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: IconButton(
              icon: Icon(Icons.edit, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Center(
                  child: Image.asset(
                    'Assets/images/trees.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CircleAvatar(radius: 78, backgroundColor: Colors.white),
              CircleAvatar(
                radius: 75,
                child: Image.asset('Assets/images/secondchildofhome.png'),
              ),
            ],
          ),

          SizedBox(height: 25),
          Text(
            'Mohammed Siddiq',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text('Flutter Developer', style: TextStyle(fontSize: 20)),
          SizedBox(height: 15),
          Text('Beni suef, Egypt', style: TextStyle(fontSize: 20)),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromARGB(255, 162, 188, 234),
              ),
              width: double.infinity,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.email),
                  Text('Mohammedasiddiqdev@gmail.com'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Divider(height: 3, color: Colors.grey),
          ),
          ...List.generate(
            3,
            (index) => CustomProfileWidget(title: titles[index]),
          ),
        ],
      ),
    );
  }
}
