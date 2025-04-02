import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return NumberScreenState();
  }
}

class NumberScreenState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(leading: Icon(Icons.arrow_back_ios)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: algae,
          foregroundColor: Colors.white,
          shape: const CircleBorder(),
          child: const Icon(Icons.navigate_next),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                "Enter your mobile number",
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
              SizedBox(height: 30),
              Text(
                "Mobile Number",
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
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 0,
                  ),
                  prefixIcon: Container(
                    alignment: Alignment.centerLeft,
                    constraints: BoxConstraints(maxWidth: 78),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: Image.asset(
                            "assets/images/flag.png",
                            width: 34,
                            height: 24,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          "+880",
                          style: TextStyle(fontSize: 16, height: 1.0),
                        ),
                      ],
                    ),
                  ),
                ),
                style: TextStyle(fontSize: 16, height: 1.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
