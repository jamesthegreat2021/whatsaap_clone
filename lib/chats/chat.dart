import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key, required this.chat}) : super(key: key);
  final ChatModel chat;

  @override
  Widget build(BuildContext context) {
    var lastChatMessage = chat.chatMessages.last; // TODO strange behavior here
    return ListTile(
      leading: CircleAvatar(),
      title: Text(chat.title),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(lastChatMessage.sender),
          Text(': '),
          Expanded(
            child: Text(
              lastChatMessage.content,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
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
