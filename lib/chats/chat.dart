import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key, required this.chat}) : super(key: key);
  final ChatModel chat;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(),
      title: Text(chat.title),
      subtitle: Text(chat.subTitle),
      trailing: Text(chat.date),
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return ChatScreen(activeChat: chat);
          },
        ),
      ),
    );
  }
}
