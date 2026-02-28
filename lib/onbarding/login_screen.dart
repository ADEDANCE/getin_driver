import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/getin_logo.png', scale: 5),
              ),

              Text(
                "GETIN",
                style: TextStyle(
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3D4CF5),
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
