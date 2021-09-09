import 'package:flutter/material.dart';
import 'package:whatsapp_clone/calls/calls.dart';
import 'package:whatsapp_clone/chats/chats.dart';
import 'package:whatsapp_clone/counter.dart';
import 'package:whatsapp_clone/tab_content.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyStatelessWidget(title: 'Whatsapp'),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatefulWidget {
  const MyStatelessWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyStatelessWidgetState createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
          title: Text(widget.title),
          bottom: TabBar(
            labelPadding: EdgeInsets.zero,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera),
              ),
              Tab(
                child: TabContent(
                    title: 'CHATS',
                    withNotification: true,
                    notificationCount: 13),
              ),
              Tab(
                child: TabContent(title: 'STATUS', withNotification: false),
              ),
              Tab(
                child: TabContent(
                    title: 'CALLS',
                    withNotification: true,
                    notificationCount: 14),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Chats(),
            Counter(),
            Calls(),
          ],
        ),
      ),
    );
  }
}
