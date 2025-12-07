import 'package:flutter/material.dart';
import 'package:tt1/Views/loginview.dart';
import 'package:tt1/constants/App_Colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          /// Right decoration (centered vertically)
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: Center(
              child: Image.asset(
                'Assets/images/rightdecoration.png',
                fit: BoxFit.contain,
              ),
            ),
          ),

          /// Left decoration (centered vertically)
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Center(
              child: Image.asset(
                'Assets/images/leftdecoration.png',
                fit: BoxFit.contain,
              ),
            ),
          ),

          /// Bottom background image (full width)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'Assets/images/shapeofsplash.png',
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),

          /// Button ABOVE the background image
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginviewHome()),
              ),
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.secondary,
                ),
                child: Center(
                  child: Text(
                    'دعنا نبدء',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          /// Center content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 65),
                Image.asset(
                  'Assets/images/Almasar-logo 1.png',
                  width: 300,
                  height: 150,
                ),
                const SizedBox(height: 20),

                Text(
                  '''دعمٌ وتمكينٌ لمستقبلٍ 
 أفضل لفئاتنا الخاصة''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 29,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
