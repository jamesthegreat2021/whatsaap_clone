import 'package:flutter/material.dart';

class TabContent extends StatelessWidget {
  final String title;
  final bool withNotification;
  final int? notificationCount;
  const TabContent(
      {Key? key,
      required this.title,
      required this.withNotification,
      this.notificationCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title.toUpperCase(),
        ),
        withNotification
            ? Container(
                width: 22,
                height: 22,
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green[700],
                ),
                child: Text(
                  '$notificationCount',
                  style: TextStyle(fontSize: 12),
                ),
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
