import 'package:flutter/material.dart';
import 'package:whatsapp_clone/calls/calls.dart';
import 'package:whatsapp_clone/chats/chats.dart';
import 'package:whatsapp_clone/counter.dart';
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
  var fabIcon = Icons.message;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {
          switch (_tabController.index) {
            case 0:
              break;
            case 1:
              fabIcon = Icons.message;
              break;
            case 2:
              fabIcon = Icons.camera_enhance;
              break;
            case 3:
              fabIcon = Icons.call;
              break;
            default:
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          controller: _tabController,
          labelPadding: EdgeInsets.zero,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: TabContent(
                  title: AppLocalizations.of(context)!.chat,
                  withNotification: true,
                  notificationCount: 13),
            ),
            Tab(
              child: TabContent(
                  title: AppLocalizations.of(context)!.status,
                  withNotification: false),
            ),
            Tab(
              child: TabContent(
                  title: AppLocalizations.of(context)!.calls,
                  withNotification: true,
                  notificationCount: 14),
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
      floatingActionButton: _tabController.index == 0
          ? SizedBox.shrink()
          : FloatingActionButton(
              onPressed: () {},
              child: Icon(fabIcon),
              backgroundColor: Colors.green,
            ),
    );
  }
}
