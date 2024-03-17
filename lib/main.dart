import 'package:flutter/material.dart';
import 'package:travel_app/screens/home_screen.dart'; //this means the file has to be in "Lib" directory

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF3EBACE),
        scaffoldBackgroundColor: const Color(0xFFF3F5F7),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(
              0xFFD8ECF1),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
