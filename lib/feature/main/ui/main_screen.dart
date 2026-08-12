import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/feature/cart/ui/cart_screen.dart';
import 'package:food_app/feature/home/ui/home_screen.dart';
import 'package:food_app/feature/order_history/ui/order_history_screen.dart';
import 'package:food_app/feature/profile/ui/profile_screen.dart';
import 'package:food_app/shared/custom_text.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    CartScreen(),
    OrderHistoryScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            activeIcon: Icon(CupertinoIcons.house_fill),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            activeIcon: Badge(
              label: CustomText(text: '1', size: 10),
              child: Icon(CupertinoIcons.cart_fill_badge_plus),
            ),
            label: 'Cart',
          ),

          BottomNavigationBarItem(
            label: 'Order History',
            icon: Icon(Icons.table_bar_outlined),
            activeIcon: Icon(Icons.table_bar_rounded),
          ),

          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            activeIcon: Icon(CupertinoIcons.person_fill),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
