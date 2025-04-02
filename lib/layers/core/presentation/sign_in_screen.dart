import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return SignInScreenState();
  }
}

class SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: soapstone,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/images/sign_in.png",
              fit: BoxFit.fitWidth,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.only(bottom: 80),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/caros_white.png",
                    width: 49,
                    height: 57,
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      "Get your groceries with nectar",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 26,
                        wordSpacing: 3,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 15),
                  TextButton.icon(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(0)
                    ),
                    icon: Image.asset(
                      "assets/images/flag.png",
                      width: 34,
                      height: 24,
                    ),
                    label: const Text(
                      "+880",
                      style: TextStyle(color: Colors.black87, fontSize: 18),
                    ),
                  ),
                  Container(height: 1, color: Colors.grey),
                  SizedBox(height: 35),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Or connect with social media",
                      style: TextStyle(
                        color: Color.fromRGBO(130, 130, 130, 1),
                        fontSize: 14,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 35),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: softBlue,
                      minimumSize: const Size(double.infinity, 67),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    icon: Image.asset(
                      "assets/images/g.png",
                      width: 23,
                      height: 24,
                    ),
                    label: const Text(
                      "Continue with Google",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: flatBlue,
                      minimumSize: const Size(double.infinity, 67),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    icon: Image.asset(
                      "assets/images/f.png",
                      width: 11,
                      height: 24,
                    ),
                    label: const Text(
                      "Continue with Facebook",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
