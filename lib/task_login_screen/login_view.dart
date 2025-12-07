import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double paddingValue = 24.0;
    const double spacing = 16.0;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(paddingValue),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Image.asset('Assets/images/image-removebg-preview.png'),
              const SizedBox(height: 20.0),
              const Center(
                child: Text(
                  'Welcome',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: spacing / 2),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingValue),
                child: Text(
                  'Log in to mhadaily to continue to MJ Coffee Flutter Application.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 90, 89, 89),
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 40.0),

              const TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  label: Text('Email address'),
                  hintText: 'Email address',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: spacing,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: spacing),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  label: const Text('Password'),
                  hintText: 'Password',
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: spacing,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.visibility_outlined,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(height: 16.0),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(height: 32.0),

              SizedBox(
                height: 56.0,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 6, 93, 164),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Don't have an account? "),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
