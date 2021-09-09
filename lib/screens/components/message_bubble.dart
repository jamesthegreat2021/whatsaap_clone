import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_message.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({Key? key, required this.message, this.isMe})
      : super(key: key);
  final ChatMessage message;
  final bool? isMe;

  @override
  Widget build(BuildContext context) {
    return Bubble(
      margin: const BubbleEdges.only(top: 10, right: 50),
      alignment: isMe! ? Alignment.topRight : Alignment.topLeft,
      nip: isMe! ? BubbleNip.rightTop : BubbleNip.leftTop,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isMe!
              ? SizedBox.shrink()
              : Text(
                  message.sender,
                  style: TextStyle(color: Colors.pink, fontSize: 12),
                ),
          Text(
            message.content,
            style: TextStyle(
              height: 1.5,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              message.timestamp,
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
