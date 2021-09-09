enum MessageType { PlainText, PlainImage, PlainVideo, PlainDocument }

class ChatMessage {
  final MessageType type;
  final String sender;
  final String content;
  final String timestamp;

  const ChatMessage(
      {required this.type,
      required this.sender,
      required this.content,
      required this.timestamp});
}

const demoMessages = [
  ChatMessage(
      type: MessageType.PlainText,
      sender: 'NASA man',
      timestamp: '12:30',
      content: 't-10s to a liftoff'),
  ChatMessage(
      type: MessageType.PlainText,
      sender: 'me', // asda;sdjaisdhln
      timestamp: '12:33',
      content: 'Are they launching today?'),
  ChatMessage(
      type: MessageType.PlainText,
      sender: 'Shadrack Shine At The Hills',
      timestamp: '12:35',
      content:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore, optio voluptate? Laboriosam voluptatum tempora sit doloremque, facere animi, nobis modi dolore dignissimos officia.'),
];
