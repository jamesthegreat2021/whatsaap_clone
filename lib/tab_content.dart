import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                alignment: Alignment.center,
                padding: EdgeInsets.all(4),
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
