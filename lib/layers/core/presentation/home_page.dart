import 'package:flutter/material.dart';
import 'package:flutter_groceries/layers/core/presentation/cart_screen.dart';
import 'package:flutter_groceries/layers/core/presentation/explore_screen.dart';
import 'package:flutter_groceries/layers/core/presentation/setting_screen.dart';
import 'package:flutter_groceries/layers/core/presentation/shop_screen.dart';
import 'package:flutter_groceries/layers/core/presentation/ui/theme/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  final screens = [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    ExploreScreen(),
    SettingScreen()
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    body: screens[_index],
    bottomNavigationBar: Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.transparent,
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return TextStyle(
                  fontSize: 12,
                  color: algae,
                );
              }
              return TextStyle(
                fontSize: 12,
                color: Colors.black,
              );
            },
          ),
        ),
        child: NavigationBar(
          height: 70,
          selectedIndex: _index,
          backgroundColor: Colors.transparent,
          onDestinationSelected: (index) => setState(() => this._index = index),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.store),
              selectedIcon: Icon(Icons.store, color: algae),
              label: 'Shop',
            ),
            NavigationDestination(
              icon: Icon(Icons.manage_search),
              selectedIcon: Icon(Icons.manage_search, color: algae),
              label: 'Explore',
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_cart),
              selectedIcon: Icon(Icons.shopping_cart, color: algae),
              label: 'Cart',
            ),
            NavigationDestination(
              icon: Image.asset("assets/images/heart.png"),
              selectedIcon: Image.asset("assets/images/heart.png", color: algae),
              label: 'Favorite',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              selectedIcon: Icon(Icons.person, color: algae),
              label: 'Account',
            ),
          ],
        ),
      ),
    ),
  );
}
