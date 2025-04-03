import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/presentation/home_page.dart';
import 'package:flutter_groceries/layers/core/presentation/onbording_screen.dart';
import 'package:flutter_groceries/layers/core/presentation/verification_screen.dart';
import 'layers/core/presentation/number_screen.dart';
import 'layers/core/presentation/sign_in_screen.dart';
import 'layers/core/presentation/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Groceries BP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: VerificationScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
