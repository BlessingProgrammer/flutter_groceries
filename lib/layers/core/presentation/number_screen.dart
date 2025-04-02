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
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
