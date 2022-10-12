import 'package:flutter/material.dart';
import 'package:flutter_community_nitrr/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.red,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff10163A),
        ),
        scaffoldBackgroundColor: const Color(0xff0C1234),
      ),
      home: HomeScreen(),
    );
  }
}
