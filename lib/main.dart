import 'package:flutter/material.dart';
import 'package:whatsapp_clone/calls/calls.dart';
import 'package:whatsapp_clone/chats/chats.dart';
import 'package:whatsapp_clone/counter.dart';
import 'package:whatsapp_clone/fab.dart';
import 'package:whatsapp_clone/tab_content.dart';
import 'package:whatsapp_clone/utils/locale_helpers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

/// This is the main application widget.
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static setLocale(BuildContext context, Locale locale) {
    var state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(locale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((Locale locale) {
      setState(() {
        _locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      locale: Locale('en', ''), // to pull from user locale prefs
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyStatelessWidget(title: 'Whatsapp'),
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
                          title: AppLocalizations.of(context)!.labelChats,
                          withNotification: true,
                          notificationCount: 13),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3 - 20,
                    child: Tab(
                      child: TabContent(
                          title: AppLocalizations.of(context)!.labelStatus,
                          withNotification: false),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3 - 20,
                    child: Tab(
                      child: TabContent(
                          title: AppLocalizations.of(context)!.labelCalls,
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
            child: Text(
              AppLocalizations.of(context)!.labelCloudy,
            ),
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
