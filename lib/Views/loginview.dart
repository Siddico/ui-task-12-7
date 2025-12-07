import 'package:flutter/material.dart';
import 'package:tt1/constants/App_Colors.dart';

class LoginviewHome extends StatelessWidget {
  const LoginviewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Right decoration
          Positioned(
            right: 0,
            top: 100,
            child: Image.asset('Assets/images/rightdecoration.png'),
          ),

          /// Left decoration
          Positioned(
            left: 0,
            top: 50,
            child: Image.asset('Assets/images/leftdecoration.png'),
          ),

          Positioned(
            left: 0,
            right: 0,
            top: 130,
            child: Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'Assets/images/shapeofsplash.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'Assets/images/secondchildofhome.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
          ),

          /// Bottom container
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 500,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: const BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22),
                  topRight: Radius.circular(22),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'أهلا بك في مؤسسة المسار للتعليم والتدريب',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'للفئات الخاصهه',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),

                  const SizedBox(height: 20),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 40,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 40,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'إنشاء حساب',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// Bottom images side-by-side

          /// Top content (logo)
          Center(
            child: Column(
              children: [
                const SizedBox(height: 65),

                Image.asset(
                  'Assets/images/Almasar-logo 1.png',
                  width: 225,
                  height: 125,
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
