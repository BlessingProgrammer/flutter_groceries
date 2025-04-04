import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/presentation/login_screen.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/apple_vector.png',
                      height: 45,
                      width: 45,
                    ),
                    SizedBox(width: 20),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Orders',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(width: 10),
                            const Icon(Icons.edit, size: 18, color: algae),
                          ],
                        ),
                        Text(
                          'blessingprogrammer@gmail.com',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.withValues(alpha: 0.8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(height: 1, color: Colors.grey.withValues(alpha: 0.5)),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.shopping_bag,
                          color: Colors.black87,
                          size: 22,
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          'Orders',
                          style: TextStyle(fontSize: 18, color: Colors.black87),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black87,
                      size: 22,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(height: 1, color: Colors.grey.withValues(alpha: 0.5)),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.credit_card_outlined,
                          color: Colors.black87,
                          size: 22,
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          'My Details',
                          style: TextStyle(fontSize: 18, color: Colors.black87),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black87,
                      size: 22,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(height: 1, color: Colors.grey.withValues(alpha: 0.5)),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.location_on_rounded,
                          color: Colors.black87,
                          size: 22,
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          'Delivery Address',
                          style: TextStyle(fontSize: 18, color: Colors.black87),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black87,
                      size: 22,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(height: 1, color: Colors.grey.withValues(alpha: 0.5)),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.wallet,
                          color: Colors.black87,
                          size: 22,
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          'Payment Methods',
                          style: TextStyle(fontSize: 18, color: Colors.black87),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black87,
                      size: 22,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(height: 1, color: Colors.grey.withValues(alpha: 0.5)),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.account_balance_wallet,
                          color: Colors.black87,
                          size: 22,
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          'Promo Cord',
                          style: TextStyle(fontSize: 18, color: Colors.black87),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black87,
                      size: 22,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(height: 1, color: Colors.grey.withValues(alpha: 0.5)),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.notifications,
                          color: Colors.black87,
                          size: 22,
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          'Notifications',
                          style: TextStyle(fontSize: 18, color: Colors.black87),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black87,
                      size: 22,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(height: 1, color: Colors.grey.withValues(alpha: 0.5)),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.help_outline_outlined,
                          color: Colors.black87,
                          size: 22,
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          'Help',
                          style: TextStyle(fontSize: 18, color: Colors.black87),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black87,
                      size: 22,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(height: 1, color: Colors.grey.withValues(alpha: 0.5)),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.help, color: Colors.black87, size: 22),
                        const SizedBox(width: 20),
                        const Text(
                          'About',
                          style: TextStyle(fontSize: 18, color: Colors.black87),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black87,
                      size: 22,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(height: 1, color: Colors.grey.withValues(alpha: 0.5)),
              const SizedBox(height: 25),
              Container(
                margin: EdgeInsets.all(20),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(17),
                  child: Card(
                    elevation: 0,
                    color: Colors.grey.withValues(alpha: 0.2),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.logout, size: 22, color: algae),
                          Expanded(
                            child: Center(
                              child: Text(
                                'Log Out',
                                style: TextStyle(fontSize: 18, color: algae),
                              ),
                            ),
                          ),
                          SizedBox(width: 2),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.transparent,
                            ),
                            child: Text(
                              'Log out',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
