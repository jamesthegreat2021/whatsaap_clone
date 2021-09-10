import 'package:flutter/material.dart';
import 'package:whatsapp_clone/calls/calls.dart';
import 'package:whatsapp_clone/chats/chats.dart';
import 'package:whatsapp_clone/counter.dart';
import 'package:whatsapp_clone/fab.dart';
import 'package:whatsapp_clone/tab_content.dart';
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
      locale: Locale('es', ''),
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyStatelessWidget(title: 'Whatsapp'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
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

class _MyStatelessWidgetState extends State<MyStatelessWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  Widget fab = SizedBox.shrink();

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(
          () {
            fab = ActiveFab(tindex: _tabController.index);
          },
        );
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _tabController.index == 0
          ? null
          : AppBar(
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
                isScrollable: true,
                controller: _tabController,
                labelPadding: EdgeInsets.zero,
                tabs: <Widget>[
                  Container(
                    width: 50,
                    child: Icon(Icons.camera),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3 - 20,
                    child: Tab(
                      child: TabContent(
                          title: AppLocalizations.of(context)!.chat,
                          withNotification: true,
                          notificationCount: 13),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3 - 20,
                    child: Tab(
                      child: TabContent(
                          title: AppLocalizations.of(context)!.status,
                          withNotification: false),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3 - 20,
                    child: Tab(
                      child: TabContent(
                          title: AppLocalizations.of(context)!.calls,
                          withNotification: true,
                          notificationCount: 14),
                    ),
                  ),
                ],
              ),
            ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: Text(AppLocalizations.of(context)!.cloudy),
          ),
          Chats(),
          Counter(),
          Calls(),
        ],
      ),
      floatingActionButton: fab,
    );
  }
}
