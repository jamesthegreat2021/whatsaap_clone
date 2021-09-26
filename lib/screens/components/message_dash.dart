import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_message.dart';
import 'package:whatsapp_clone/screens/components/category_time.dart';
import 'package:whatsapp_clone/screens/components/message_bubble.dart';

// This is not clear enough
class MessageDash extends StatelessWidget {
  const MessageDash({Key? key, required this.chatMessages}) : super(key: key);
  final List<ChatMessage?> chatMessages;

  @override
  Widget build(BuildContext context) {
    final messages = chatMessages.isNotEmpty
        ? chatMessages
            .map(
              (e) => MessageBubble(message: e!),
            )
            .toList()
        : [];
    return Column(
      children: [
        CategoryTime(timestamp: 'Today'),
        ...messages,
      ],
    );
  }
}
