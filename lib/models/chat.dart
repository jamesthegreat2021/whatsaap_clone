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
          sender: 'Anonymous',
          timestamp: '12:30',
          content:
              'I need a solution for sending WhatsApp, SMS, Viber & Facebook messages without too much code, do you have any ideas? 🤷',
          group: 'yesterday',
        ),
        ChatMessage(
            sender: 'james',
            type: MessageType.PlainText,
            timestamp: '12:33',
            content: 'Sure, What can I help with?',
            group: 'yesterday',
            isMe: true),
        ChatMessage(
            sender: 'james',
            type: MessageType.PlainText,
            timestamp: '12:34',
            content: 'Hello, What can we help you with?',
            group: 'yesterday',
            isMe: true),
        ChatMessage(
          type: MessageType.PlainText,
          sender: 'NASA man',
          timestamp: '10:30',
          content: 't-10s to a liftoff',
          group: 'today',
        ),
        ChatMessage(
            sender: 'james',
            type: MessageType.PlainText,
            timestamp: '10:32',
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
        ChatMessage(
          sender: 'HeyYouNotYouYou',
          type: MessageType.PlainText,
          timestamp: '12:37',
          content: "'̿'\̵͇̿̿\з= ( ▀ ͜͞ʖ▀) =ε/̵͇̿̿/'̿'",
          group: 'today',
        ),
      ]),
  ChatModel(
      title: 'Hallima',
      subTitle: 'vip',
      date: 'yesterday',
      chatMessages: [
        ChatMessage(
          sender: 'Hallima',
          type: MessageType.PlainText,
          timestamp: '12:37',
          content: "vip",
          group: 'yesterday',
        ),
      ]),
  ChatModel(
      title: 'Tuongee Kuhusu soka',
      subTitle: '+2334234252: man u',
      date: 'today',
      chatMessages: [
        ChatMessage(
          sender: '+2334234252',
          type: MessageType.PlainText,
          timestamp: '12:37',
          content: "man u",
          group: 'today',
        ),
      ]),
];
