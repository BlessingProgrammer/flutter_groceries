import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';

import 'home_page.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/order_bg.png',
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Align(
          alignment: Alignment(-0.3, -0.6),
          child: Image.asset(
            'assets/images/order_accepted.png',
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment(0, 0.1),
          child: const Text(
            'Your Order has been\naccepted',
            style: TextStyle(
              fontSize: 28,
              color: Colors.black,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Align(
          alignment: Alignment(0, 0.3),
          child: Text(
            'Your items has been placcd and is on '
                '\nit’s way to being processed',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Align(
          alignment: Alignment(0, 0.8),
          child: Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: algae,
                minimumSize: const Size(double.infinity, 67),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                "Track Order",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, 1),
          child: Container(
            margin: EdgeInsets.all(20),
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ));
              },
              child: const Text(
                "Back to home",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
