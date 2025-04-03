import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: algae,
      child: Align(
        alignment: Alignment.center,
        child: Image.asset("assets/images/splash.png", height: 69, width: 268),
      ),
    );
  }
}
