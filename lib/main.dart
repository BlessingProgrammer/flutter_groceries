import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/presentation/home_page.dart';
import 'package:flutter_groceries/layers/core/presentation/onbording_screen.dart';
import 'package:flutter_groceries/layers/core/presentation/signup_screen.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';
import 'package:flutter_groceries/layers/core/presentation/verification_screen.dart';
import 'layers/core/presentation/explore_screen.dart';
import 'layers/core/presentation/login_screen.dart';
import 'layers/core/presentation/number_screen.dart';
import 'layers/core/presentation/product_detail_screen.dart';
import 'layers/core/presentation/product_see_all_screen.dart';
import 'layers/core/presentation/select_location_screen.dart';
import 'layers/core/presentation/shop_screen.dart';
import 'layers/core/presentation/sign_in_screen.dart';
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
