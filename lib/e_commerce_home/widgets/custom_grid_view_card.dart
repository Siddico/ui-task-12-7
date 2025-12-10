import 'package:flutter/material.dart';

class CustomGridViewCard extends StatelessWidget {
  const CustomGridViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.grey.shade300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(
              // top: 12,
              left: 8,
              right: 8,
              bottom: 4,
            ),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset('Assets/images/trees.jpg', fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                Text(
                  'Title',
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
                Text(
                  r'$150',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Icon Button', style: TextStyle(fontSize: 18)),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border_outlined),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
