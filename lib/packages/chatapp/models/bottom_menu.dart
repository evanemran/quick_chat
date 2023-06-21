import 'package:flutter/cupertino.dart';
import 'package:quick_chat/packages/chatapp/pages/profile_page.dart';
import 'package:quick_chat/packages/chatapp/pages/search_page.dart';

import '../pages/chat_page.dart';
import '../pages/messages_page.dart';

enum BottomMenu {
  CHAT('Chats', 'assets/chat.png', MessagesPage()),
  SEARCH('Search', 'assets/search.png', SearchPage()),
  PROFILE('Profile', 'assets/user.png', ProfilePage());


  final String title;
  final String icon;
  final Widget widget;

  const BottomMenu(this.title, this.icon, this.widget);
}