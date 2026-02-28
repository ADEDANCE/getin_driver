import 'package:flutter/material.dart';
import 'package:getin_driver/onbarding/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller; //to controls animation timing
  late Animation<Offset> _slideAnimation; // controls position movement
  late Animation<double> _fadeAnimation; // controls opacity

  @override
  void initState() {
    super.initState();
    // Animation duration
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );
    // Slide from bottom to original position
    _slideAnimation =
        Tween<Offset>(
          begin: const Offset(0, 1), // Start below
          end: const Offset(0, 0), // End at normal position
        ).animate(
          CurvedAnimation(
            parent: _controller,
            curve: Curves.easeOut, // Smooth upward movement
          ),
        );

    // Fade from invisible to visible
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _controller.forward(); // Start animation

    gologin();
  }

  void gologin() async {
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: _slideAnimation,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/getin_logo.png'),
              ),
            ),
          ),
          FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: _slideAnimation,
              child: Text(
                "GETIN",
                style: const TextStyle(
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3D4CF5),
                ),
              ),
            ),
          ),

          // FadeTransition(
          //   opacity: _fadeAnimation,
          //   child: SlideTransition(
          //     position: _slideAnimation,
          //     child: Text(
          //       "Your ride your way",
          //       style: const TextStyle(
          //         fontSize: 16,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
