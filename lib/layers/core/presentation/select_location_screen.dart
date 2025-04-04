import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/presentation/login_screen.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';

class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return SelectLocationScreenState();
  }
}

const List<String> list = <String>['Banasree', 'Banasree2', 'Banasree3'];
const List<String> area = <String>['Area', 'Area1', 'Area2'];

typedef MenuEntry = DropdownMenuEntry<String>;

class SelectLocationScreenState extends State<SelectLocationScreen> {
  static final List<MenuEntry> menuEntries = UnmodifiableListView<MenuEntry>(
    list.map<MenuEntry>((String name) => MenuEntry(value: name, label: name)),
  );
  String dropdownValue = list.first;

  static final List<MenuEntry> menuArea = UnmodifiableListView<MenuEntry>(
    area.map<MenuEntry>((String name) => MenuEntry(value: name, label: name)),
  );
  String dropdownArea = area.first;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            borderRadius: BorderRadius.circular(30),
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/location_banner.png",
                  width: 225,
                  height: 171,
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Select Your Location",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 26,
                    wordSpacing: 3,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Swithch on your location to stay in tune with what’s"
                " happening in your area",
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
                "Your Zone",
                style: TextStyle(
                  color: Color.fromRGBO(130, 130, 130, 1),
                  fontSize: 14,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              DropdownMenu<String>(
                initialSelection: list.first,
                onSelected: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                dropdownMenuEntries: menuEntries,
                width: double.infinity,
                menuStyle: MenuStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                ),
                inputDecorationTheme: InputDecorationTheme(
                  isDense: true,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  outlineBorder: BorderSide.none,
                  contentPadding: EdgeInsets.zero,
                ),
                trailingIcon: const Icon(Icons.keyboard_arrow_down, size: 24),
                selectedTrailingIcon: const Icon(
                  Icons.keyboard_arrow_up,
                  size: 24,
                ),
              ),
              Container(height: 1, color: Colors.grey),
              SizedBox(height: 20),
              Text(
                "Your Area",
                style: TextStyle(
                  color: Color.fromRGBO(130, 130, 130, 1),
                  fontSize: 14,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              DropdownMenu<String>(
                initialSelection: area.first,
                onSelected: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                dropdownMenuEntries: menuArea,
                width: double.infinity,
                menuStyle: MenuStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                ),
                inputDecorationTheme: InputDecorationTheme(
                  isDense: true,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  outlineBorder: BorderSide.none,
                  contentPadding: EdgeInsets.zero,
                ),
                trailingIcon: const Icon(Icons.keyboard_arrow_down, size: 24),
                selectedTrailingIcon: const Icon(
                  Icons.keyboard_arrow_up,
                  size: 24,
                ),
              ),
              Container(height: 1, color: Colors.grey),
              SizedBox(height: 40),
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
                  "Submit",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
