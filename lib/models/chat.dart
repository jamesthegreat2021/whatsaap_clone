import 'package:whatsapp_clone/models/chat_message.dart';

class ChatModel {
  final String title;
  final String subTitle;
  final String date;
  List<ChatMessage> chatMessages;

  ChatModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.chatMessages});
}

var demoChats = [
  ChatModel(
      title: 'MISS CLASS OF 2016 REUNION',
      subTitle: 'Shedrack: shared a file',
      date: '22:12',
      chatMessages: [
        ChatMessage(
          type: MessageType.PlainText,
          sender: 'NASA man',
          timestamp: '12:30',
          content: 't-10s to a liftoff',
          group: 'today',
        ),
        ChatMessage(
            sender: 'james',
            type: MessageType.PlainText,
            timestamp: '12:33',
            content: 'Are they launching today?',
            group: 'today',
            isMe: true),
        ChatMessage(
            type: MessageType.PlainText,
            sender: 'Shadrack Shine At The Hills',
            group: 'today',
            timestamp: '12:35',
            content:
                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore, optio voluptate? Laboriosam voluptatum tempora sit doloremque, facere animi, nobis modi dolore dignissimos officia.'),
      ]),
  ChatModel(
      title: 'Hallima', subTitle: 'vip', date: 'yesterday', chatMessages: []),
  ChatModel(
      title: 'Tuongee Kuhusu soka',
      subTitle: '+2334234252: man u',
      date: 'today',
      chatMessages: []),
];
