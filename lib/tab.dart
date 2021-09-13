import 'package:flutter/material.dart';
import 'package:whatsapp_clone/tab_content.dart';

class TabContainer extends StatelessWidget {
  const TabContainer(
      {Key? key,
      required this.title,
      required this.withNotifications,
      this.notificationCount})
      : super(key: key);
  final String title;
  final bool withNotifications;
  final int? notificationCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 - 16.666666667,
      child: Tab(
        child: TabContent(
            title: title,
            withNotification: withNotifications ? true : false,
            notificationCount: withNotifications ? notificationCount : null),
      ),
    );
  }
}
