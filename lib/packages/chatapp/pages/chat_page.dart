import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/message.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/received_message_widget.dart';
import '../widgets/sent_message_widget.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  final ScrollController scrollController = ScrollController();

  List<Message> list = [
    Message("How can I help you?", 1),
  ];

  void scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 300),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.jumpTo(scrollController.position.maxScrollExtent);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        color: Colors.black,
        child: Column(
          children: [
            Expanded(child: ListView.builder(
                controller: scrollController,
                itemCount: list.length,
                itemBuilder: (context, position) {
                  var item = list[position];
                  if(item.type==0) {
                    return InkWell(
                      child: SentMessage(message: list[position].message),
                    );
                  }
                  else {
                    return InkWell(
                      child: ReceivedMessage(message: list[position].message),
                    );
                  }
                })),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomBarWidget(onCLicked: (text) {
                Message ownMessage = Message(text, 0);
                setState(() {
                  list.add(ownMessage);
                  // list.add(Message("Getting response...", 3));
                });
                // scrollToBottom();
                // sendRequest(RequestModel(text));
              },),
            )
          ],
        ),
      ),
    );
  }
}
