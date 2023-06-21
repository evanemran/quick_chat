import 'package:flutter/material.dart';
import 'package:quick_chat/packages/chatapp/models/bottom_menu.dart';

import '../../../presentation/color_manager.dart';

class CustomNavigationBar extends StatelessWidget {
  final List<BottomMenu> menu;
  final int selectedIndex;
  final ValueChanged<int> onIndexChanged;

  const CustomNavigationBar({super.key,
    required this.menu,
    required this.selectedIndex,
    required this.onIndexChanged,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: ColorManager.white,
      elevation: 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          menu.length,
              (index) => IconButton(
            icon: ImageIcon(
              AssetImage(menu[index].icon),
              color: index == selectedIndex ? ColorManager.primary : Colors.grey,
            ),
            onPressed: () {
              onIndexChanged(index);
            },
          ),
        ),
      ),
    );
  }
}