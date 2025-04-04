import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/presentation/onbording_screen.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Tạo đếm ngược 3 giây
    Timer(const Duration(seconds: 3), () {
      // Navigate tới OnboardingScreen sau 3 giây
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnbordingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: algae,
      child: Align(
        alignment: Alignment.center,
        child: Image.asset(
          "assets/images/splash.png",
          height: 69,
          width: 268,
        ),
      ),
    );
  }
}
