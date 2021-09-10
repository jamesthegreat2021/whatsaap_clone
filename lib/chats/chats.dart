import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chats/chat.dart';
import 'package:whatsapp_clone/models/chat.dart';

class Chats extends StatelessWidget {
  const Chats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: demoChats.length,
        itemBuilder: (context, index) {
          return Chat(chat: demoChats[index]);
        },
      ),
    );
  }
}
