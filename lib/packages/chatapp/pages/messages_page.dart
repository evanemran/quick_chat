import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quick_chat/packages/chatapp/models/user.dart';
import 'package:quick_chat/packages/chatapp/pages/chat_page.dart';
import 'package:quick_chat/presentation/color_manager.dart';

import '../models/chat.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {

            return ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: ColorManager.primary,
                // backgroundImage: AssetImage("assets/alex.png"),
                child: Center(child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0), // Adjust the corner radius as needed
                  child: Image.asset(
                    'assets/alex.png', // Replace with your image path
                    width: 44.0, // Set the desired width of the image
                    height: 44.0, // Set the desired height of the image
                    fit: BoxFit.cover,
                  ),
                ),),
              ),
              title: const Text("Evan Emran", style: TextStyle(color: Colors.black),),
              subtitle: const Text("This is a test message."),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatPage()));
              },
            );
          }
      ),
    );
  }
}
