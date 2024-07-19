import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screens/navigation_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ECommerce Shopping',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xFFDB3022)
        ),
        home: NavigationScreen());
  }
}
