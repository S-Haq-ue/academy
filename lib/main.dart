import 'package:academy/const_file.dart';
import 'package:academy/home_screen/home_screen.dart';
import 'package:academy/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      routes: {
        LoginScreen.classId: (BuildContext context) => const LoginScreen(),
        HomeScreen.classId: (BuildContext context) => const HomeScreen(),
      },
    );
  }
}
