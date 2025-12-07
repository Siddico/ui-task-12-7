import 'package:flutter/material.dart';

Widget buildHeader() {
  return Container(
    padding: const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 30),
    decoration: const BoxDecoration(
      color: Color(0xFF317BFF),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(
                'Assets/images/secondchildofhome.png',
              ),
            ),
            const SizedBox(width: 15),
            const Text(
              "Hello, Ahmed",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.workspace_premium_rounded,
                color: Color(0xFF317BFF),
                size: 28,
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 24,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget buildPlayWithFriends() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Container(
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xFF3A7BFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 7),
            const Text(
              "Play With your\nFriends",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Find Friend",
                    style: TextStyle(color: const Color(0xFF317BFF)),
                  ),
                ),
                const SizedBox(width: 20),
                const Text(
                  "Join Quiz",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget buildSectionTitle(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Align(
      alignment: AlignmentGeometry.centerLeft,
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget buildLessonsRow() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [lessonCard(), lessonCard()],
    ),
  );
}

Widget lessonCard() {
  return Container(
    width: 180,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 5),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: Image.asset(
            'Assets/images/shapeofsplash.png',
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 130,
                    child: Text(
                      "The First Physics Lesson",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'ch 1',
                    style: TextStyle(color: Color(0xFF317BFF), fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.timer, size: 16, color: Color(0xFF317BFF)),
                  SizedBox(width: 5),
                  Text("10 min"),
                  SizedBox(width: 10),
                  Icon(Icons.science, size: 16, color: Color(0xFF317BFF)),
                  SizedBox(width: 5),
                  Text("Physics"),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildTopRankedCard() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color(0xFF317BFF),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF317BFF).withOpacity(0.4),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            children: [
              SizedBox(width: 10),

              Container(
                width: 30,

                height: 30,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),

                  border: Border.all(color: Colors.white),
                ),

                child: CircleAvatar(
                  backgroundColor: Color(0xFF317BFF),

                  radius: 15,

                  child: Text('1', style: TextStyle(color: Colors.white)),
                ),
              ),

              SizedBox(width: 15),

              const CircleAvatar(
                radius: 25,

                backgroundImage: AssetImage('Assets/images/shapeofsplash.png'),
              ),

              const SizedBox(width: 15),

              const Expanded(
                child: Text(
                  "Ahmed",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Score
              const Text(
                "989",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),

        Positioned(
          top: -20,
          right: 15,
          child: Transform.rotate(
            angle: 0.2,
            child: const Icon(
              Icons.workspace_premium_rounded,
              color: Colors.amber,
              size: 40,
            ),
          ),
        ),
      ],
    ),
  );
}
