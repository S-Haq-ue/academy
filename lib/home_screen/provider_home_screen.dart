import 'package:academy/const_file.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class HomeScreenProvider with ChangeNotifier {
  HomeScreenProvider() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollUpdate);
  }

  final List<BottomNavigationBarItem> navBarItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: secondaryColor),
    const BottomNavigationBarItem(
        icon: Icon(Bootstrap.binoculars), label: "Self Study", backgroundColor: secondaryColor),
    BottomNavigationBarItem(
        icon: CircleAvatar(
          backgroundColor: Colors.redAccent,
          radius: 12,
          child: Text(
            "A",
            style: normalText,
          ),
        ),
        label: "Me",
        backgroundColor: secondaryColor),
  ];

  bool _isScrolled = false;
  late ScrollController _scrollController;

  bool get isScrolled => _isScrolled;
  ScrollController get scrollController => _scrollController;

  void _scrollUpdate() {
    _isScrolled = _scrollController.offset > 70;
    notifyListeners();
  }
}
