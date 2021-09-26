import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

class CategoryTime extends StatelessWidget {
  const CategoryTime({Key? key, required this.group}) : super(key: key);
  final String group;

  @override
  Widget build(BuildContext context) {
    return Bubble(
      margin: BubbleEdges.only(top: 8),
      color: Color.fromRGBO(212, 234, 244, 1.0),
      child: Text(
        group,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 11.0),
      ),
    );
  }
}
