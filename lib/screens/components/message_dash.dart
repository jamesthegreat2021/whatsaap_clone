import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:whatsapp_clone/models/chat_message.dart';
import 'package:whatsapp_clone/screens/components/category_time.dart';
import 'package:whatsapp_clone/screens/components/message_bubble.dart';

class MessageDash extends StatelessWidget {
  const MessageDash({Key? key, required this.chatMessages}) : super(key: key);
  final List<ChatMessage> chatMessages;

  @override
  Widget build(BuildContext context) {
    return GroupedListView<dynamic, String>(
        useStickyGroupSeparators: false, // needs to float
        floatingHeader: true,
        elements: chatMessages,
        groupBy: (element) => element.group,
        itemComparator: (cm1, cm2) => cm2.timestamp.compareTo(cm1.timestamp),
        groupSeparatorBuilder: (String value) => Column(
              children: [CategoryTime(group: value)],
            ),
        itemBuilder: (c, element) {
          return MessageBubble(message: element);
        },
        order: GroupedListOrder.DESC);
  }
}
