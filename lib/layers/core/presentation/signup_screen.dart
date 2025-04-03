import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';

import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return SignupScreenState();
  }
}

class SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/caros.png",
                  width: 38,
                  height: 42,
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Sign Up",
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
              SizedBox(height: 15),
              Text(
                "Enter your credentials to continue",
                style: TextStyle(
                  color: Color.fromRGBO(130, 130, 130, 1),
                  fontSize: 14,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Text(
                "Username",
                style: TextStyle(
                  color: Color.fromRGBO(130, 130, 130, 1),
                  fontSize: 14,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Enter your username',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 0,
                  ),
                ),
                style: TextStyle(fontSize: 16, height: 1.0),
              ),
              SizedBox(height: 30),
              Text(
                "Email",
                style: TextStyle(
                  color: Color.fromRGBO(130, 130, 130, 1),
                  fontSize: 14,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 0,
                  ),
                  suffixIcon: Icon(Icons.check, color: algae),
                ),
                style: TextStyle(fontSize: 16, height: 1.0),
              ),
              SizedBox(height: 30),
              Text(
                "Password",
                style: TextStyle(
                  color: Color.fromRGBO(130, 130, 130, 1),
                  fontSize: 14,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 0,
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                ),
                style: TextStyle(fontSize: 16, height: 1.0),
              ),
              SizedBox(height: 10),
              RichText(
                strutStyle: StrutStyle(
                  fontSize: 14,
                  fontFamily: 'Gilroy',
                  height: 1.6,
                ),
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'By continuing you agree to our ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(color: algae),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextSpan(
                      text: 'Privacy Policy.',
                      style: TextStyle(color: algae),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: algae,
                  minimumSize: const Size(double.infinity, 67),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "Signup",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 3),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    child: Text(
                      'Login?',
                      style: TextStyle(
                        fontSize: 14,
                        color: algae,
                        fontFamily: 'Gilroy',
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
