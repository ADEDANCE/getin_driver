import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getin_driver/onbarding/registration_screen.dart';
import 'package:getin_driver/reusable_widget/button_widget.dart';
import 'package:getin_driver/reusable_widget/textfied_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _confirmpasswordcontroller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/getin_logo.png',
                        scale: 3,
                      ),
                    ),

                    Text(
                      "GETIN",
                      style: TextStyle(
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3D4CF5),
                      ),
                    ),
                    Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF000000),
                      ),
                    ),
                    Text(
                      "Sign up to become a GETIN driver",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    TextfiedWidget(
                      controller: _emailcontroller,
                      hintText: 'Email address',
                    ),
                    SizedBox(height: 10.h),
                    TextfiedWidget(
                      controller: _passwordcontroller,
                      hintText: 'Password',
                      issuffixIcon: true,
                    ),
                    SizedBox(height: 10.h),

                    TextfiedWidget(
                      controller: _confirmpasswordcontroller,
                      hintText: 'Confirm Password',
                      issuffixIcon: true,
                    ),
                    SizedBox(height: 10.h),

                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF3D4CF5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ButtonWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => RegistrationScreen()),
                  );
                },
                backgroundColor: Color(0xFF3D4CF5),
                height: 65.h,
                width: double.infinity,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(color: Color(0xFFa6a3a2), thickness: 1),
                  ),
                  SizedBox(width: 3),
                  Text(
                    "or continue with",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                  ),
                  SizedBox(width: 3),
                  Expanded(
                    child: Divider(color: Color(0xFFa6a3a2), thickness: 1),
                  ),
                ],
              ),
              SizedBox(height: 10),
              ButtonWidget(
                onPressed: () {},
                backgroundColor: Color(0xFFFFFFFF),
                bordercolor: Color(0xFFa6a3a2),
                height: 40,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/google-logo.png",
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "GOOGLE",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF000000),
                    ),
                  ),
                  SizedBox(width: 3),
                  Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF3D4CF5),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),

              Text(
                "By continuing, you agree to our Terms of Service and Privacy Policy",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
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
