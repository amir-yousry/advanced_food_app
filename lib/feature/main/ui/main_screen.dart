import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/core/theme/colors.dart';
import 'package:food_app/feature/cart/ui/cart_screen.dart';
import 'package:food_app/feature/home/ui/home_screen.dart';
import 'package:food_app/feature/orders_history/ui/orders_history_screen.dart';
import 'package:food_app/feature/profile/ui/profile_screen.dart';

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
    OrdersHistoryScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),

      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),

          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },

            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,

            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white60,

            selectedFontSize: 12,
            unselectedFontSize: 11,

            showUnselectedLabels: true,

            items: [
              const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home, size: 23),
                activeIcon: Icon(CupertinoIcons.house_fill, size: 24),
                label: 'Home',
              ),

              BottomNavigationBarItem(
                icon: Badge(
                  isLabelVisible: true,
                  label: const Text(
                    '1',
                    style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                  ),
                  child: const Icon(CupertinoIcons.cart, size: 23),
                ),
                activeIcon: Badge(
                  isLabelVisible: true,
                  label: const Text(
                    '1',
                    style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                  ),
                  child: const Icon(CupertinoIcons.cart_fill, size: 24),
                ),
                label: 'Cart',
              ),

              const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.time, size: 23),
                activeIcon: Icon(CupertinoIcons.time_solid, size: 24),
                label: 'Orders',
              ),

              const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person, size: 23),
                activeIcon: Icon(CupertinoIcons.person_fill, size: 24),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
