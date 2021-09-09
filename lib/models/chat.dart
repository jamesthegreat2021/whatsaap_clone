class ChatModel {
  final String title;
  final String subTitle;
  final String date;

  const ChatModel(
      {required this.title, required this.subTitle, required this.date});
}

// needs to associate messages with chat
const demoChats = [
  ChatModel(
      title: 'MISS CLASS OF 2016 REUNION',
      subTitle: 'Shedrack: shared a file',
      date: '22:12'),
  ChatModel(title: 'Hallima', subTitle: 'vip', date: 'yesterday'),
  ChatModel(
      title: 'Tuongee Kuhusu soka',
      subTitle: '+2334234252: man u',
      date: 'today'),
];
