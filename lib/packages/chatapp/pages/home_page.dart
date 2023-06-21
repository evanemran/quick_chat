import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quick_chat/presentation/color_manager.dart';

import '../models/bottom_menu.dart';
import '../widgets/custom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<BottomMenu> menuList = [
    BottomMenu.CHAT,
    BottomMenu.SEARCH,
    BottomMenu.PROFILE,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        title: const Text("Quick Chat"),
        backgroundColor: ColorManager.primary,
      ),
      body: menuList[_currentIndex].widget,
      bottomNavigationBar: CustomNavigationBar(
        menu: menuList,
        selectedIndex: _currentIndex,
        onIndexChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
