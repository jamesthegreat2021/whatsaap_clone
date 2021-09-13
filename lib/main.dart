import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/calls/calls.dart';
import 'package:whatsapp_clone/chats/chats.dart';
import 'package:whatsapp_clone/counter.dart';
import 'package:whatsapp_clone/fab.dart';
import 'package:whatsapp_clone/locale_provider.dart';
import 'package:whatsapp_clone/tab_content.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LocaleProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    context.read<LocaleProvider>().fetchLocale();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Whatsapp',
          locale: value.locale, // to pull from user locale prefs
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: ThemeData(primarySwatch: Colors.green),
          home: const MyStatelessWidget(title: 'Whatsapp'),
        );
      },
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
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        children: [
                          SimpleDialogOption(
                            child: Text(
                              AppLocalizations.of(context)!.labelSelectLanguage,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SimpleDialogOption(
                            child: Text('en'),
                            onPressed: () {
                              var localeProvider =
                                  context.read<LocaleProvider>();
                              localeProvider.changeLanguage('en');
                              Navigator.pop(context);
                            },
                          ),
                          SimpleDialogOption(
                            child: Text('es'),
                            onPressed: () {
                              var localeProvider =
                                  context.read<LocaleProvider>();
                              localeProvider.changeLanguage('es');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  ),
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
