import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_message.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({Key? key, required this.message}) : super(key: key);
  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Bubble(
      margin: BubbleEdges.only(
        top: 10,
        left: message.isMe == true ? 50 : 0,
        right: message.isMe == null ? 50 : 0,
      ),
      alignment: message.isMe == true ? Alignment.topRight : Alignment.topLeft,
      nip: message.isMe == true ? BubbleNip.rightTop : BubbleNip.leftTop,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          message.isMe == true
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
