import 'package:flutter/material.dart';
import 'package:tt1/task_ui_12_7_2025/custom_card.dart';
import 'package:tt1/task_ui_12_7_2025/widgetsOfTask.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF317BFF),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
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
                  const SizedBox(height: 26),
                  // GridView.builder(
                  //   shrinkWrap: true,
                  //   physics: const NeverScrollableScrollPhysics(),
                  //   itemCount: 10,
                  //   gridDelegate:
                  //       const SliverGridDelegateWithFixedCrossAxisCount(
                  //         crossAxisCount: 5,
                  //         crossAxisSpacing: 6,
                  //         mainAxisSpacing: 6,
                  //         childAspectRatio: 2.0,
                  //       ),
                  //   itemBuilder: (context, index) {
                  //     return Card(
                  //       elevation: 4,
                  //       child: Center(child: Text('Item $index')),
                  //     );
                  //   },
                  // ),
                  SizedBox(
                    height: 255,
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: List.generate(
                        40,
                        (index) => CustomCard(
                          url: 'Assets/images/secondchildofhome.png',
                          name: 'plaaaaapla',
                          price: r'$20',
                          itemData: 'haaaaaaaaaaaa',
                        ),
                        // SizedBox(
                        //   height: 25,
                        //   child: Card(
                        //     elevation: 4,
                        //     child: Text(
                        //       ' Item $index',
                        //       style: TextStyle(color: Colors.black),
                        //     ),
                        //   ),
                        // ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
