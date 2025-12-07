import 'package:flutter/material.dart';
import 'package:tt1/task_ui_12_7_2025/widgetsOfTask.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF317BFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 246, 242, 242),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),

            child: Column(
              children: [
                buildPlayWithFriends(),
                const SizedBox(height: 10),
                buildSectionTitle("Latest Lessons"),
                buildLessonsRow(),
                const SizedBox(height: 10),
                buildSectionTitle("Top Ranked"),
                buildTopRankedCard(),
                const SizedBox(height: 10),
                buildSectionTitle("Latest Exam insights"),
                const SizedBox(height: 68),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
