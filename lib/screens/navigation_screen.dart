import 'dart:math';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screens/cart_screen.dart';
import 'package:flutter_ecommerce/screens/favorite_screen.dart';
import 'package:flutter_ecommerce/screens/home_screen.dart';
import 'package:flutter_ecommerce/screens/profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      extendBody: true,
      floatingActionButton: SafeArea(
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFFDB3022),
          shape: CircleBorder(),
          child: Icon(
            Icons.qr_code,
            size: 28,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.profile_circled,
        ],
        backgroundColor: Colors.white,
        shadow: BoxShadow(
          color: Colors.grey.shade200,
          blurRadius: 1,
          blurStyle: BlurStyle.outer,
          offset: Offset.fromDirection(12),
        ),
        inactiveColor: Colors.black.withOpacity(0.5),
        activeColor: Color(0xFFDB3022),
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        iconSize: 25,
        rightCornerRadius: 10,
        elevation: 0,
        activeIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
