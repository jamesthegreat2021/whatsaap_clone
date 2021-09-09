import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

class CategoryTime extends StatelessWidget {
  const CategoryTime({Key? key, required this.timestamp}) : super(key: key);
  final String timestamp;

  @override
  Widget build(BuildContext context) {
    return Bubble(
      color: Color.fromRGBO(212, 234, 244, 1.0),
      child: Text(
        timestamp,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 11.0),
      ),
    );
  }
}
