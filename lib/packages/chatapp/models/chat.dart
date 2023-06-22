import 'package:quick_chat/packages/chatapp/models/user.dart';

import 'message.dart';

class Chat {
  User user;
  List<Message> messages;

  Chat(this.user, this.messages);
}