import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/call.dart';

class Call extends StatelessWidget {
  const Call({Key? key, required this.call}) : super(key: key);
  final CallModel call;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(),
      title: Text(call.title),
      subtitle: Row(
        children: [
          Icon(Icons.trending_down_outlined),
          Text('(${call.subTitle}) ${call.date}')
        ],
      ),
      trailing: Icon(Icons.video_call),
    );
  }
}
