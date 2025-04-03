import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/presentation/select_location_screen.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return VerificationState();
  }
}

class VerificationState extends State<VerificationScreen> {
  // Tạo 4 controller cho 4 ô nhập
  final List<TextEditingController> _controllers = List.generate(
    4,
    (_) => TextEditingController(),
  );
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void dispose() {
    // Giải phóng controllers và focus nodes
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(leading: Icon(Icons.arrow_back_ios)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SelectLocationScreen(),
              ),
            );
          },
          backgroundColor: algae,
          foregroundColor: Colors.white,
          shape: const CircleBorder(),
          child: const Icon(Icons.navigate_next),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    "Enter your 4-digit code",
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
                    "Code",
                    style: TextStyle(
                      color: Color.fromRGBO(130, 130, 130, 1),
                      fontSize: 16,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(4, (index) {
                      return SizedBox(
                        width: 20, // Tăng width để chứa số hoặc gạch rõ hơn
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          // Tăng margin để các ô cách nhau rõ hơn
                          child: TextField(
                            controller: _controllers[index],
                            focusNode: _focusNodes[index],
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            decoration: InputDecoration(
                              counterText: '',
                              contentPadding: EdgeInsets.all(0),
                              border: InputBorder.none,
                              hintText: '-',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            onChanged: (value) {
                              if (value.length == 1 && index < 3) {
                                _focusNodes[index + 1].requestFocus();
                              }
                              if (value.isEmpty && index > 0) {
                                _focusNodes[index - 1].requestFocus();
                              }
                            },
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 5),
                  Container(height: 1, color: Colors.grey),
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20,horizontal: 0),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0)
                    ),
                    child: Text(
                      "Resend Code",
                      style: TextStyle(
                        color: algae,
                        fontSize: 18,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
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
