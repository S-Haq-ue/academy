
import 'package:academy/home_screen/components/body.dart';
import 'package:academy/home_screen/provider_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static const classId = '/HomeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
            create: (context) => HomeScreenProvider(),
            child: const Body(),
          );
  }
}
