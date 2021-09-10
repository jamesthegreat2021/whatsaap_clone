import 'package:flutter/material.dart';

class ActiveFab extends StatelessWidget {
  const ActiveFab({Key? key, required this.tindex}) : super(key: key);
  final int tindex;

  @override
  Widget build(BuildContext context) {
    switch (tindex) {
      case 0:
        return SizedBox.shrink();
      case 1:
        return FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message),
        );
      case 2:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              mini: true,
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            SizedBox(height: 5),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.camera),
            )
          ],
        );
      case 3:
        return FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.call),
        );
      default:
    }
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.message),
    );
  }
}
