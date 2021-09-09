import 'package:flutter/material.dart';
import 'package:whatsapp_clone/calls/call.dart';
import 'package:whatsapp_clone/models/call.dart';

class Calls extends StatelessWidget {
  const Calls({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: demoCalls.length,
        itemBuilder: (context, index) {
          return Call(call: demoCalls[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.call),
      ),
    );
  }
}
