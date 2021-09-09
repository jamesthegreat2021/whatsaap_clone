import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_message.dart';
import 'package:whatsapp_clone/screens/components/category_time.dart';

// This is not clear enough
class MessageDash extends StatelessWidget {
  const MessageDash({Key? key, required this.message}) : super(key: key);
  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryTime(timestamp: 'Today'),
        Bubble(
          alignment: Alignment.topLeft,
          margin: BubbleEdges.only(top: 10),
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),
      ],
    );
  }
}
