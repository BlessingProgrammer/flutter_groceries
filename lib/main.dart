import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';
import 'layers/core/presentation/splash_screen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
    ));

    return MaterialApp(
      title: 'Groceries BP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: soapstone),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SplashScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
