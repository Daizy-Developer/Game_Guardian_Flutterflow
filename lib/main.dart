import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'flutter_flow/nav/nav.dart';
import 'index.dart';
import 'custom_code/widgets/call_page.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();

  await FlutterFlowTheme.initialize();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CallPage(),
    );
  }
}

// class _MyAppState extends State<MyApp> {
//   Locale? _locale;
//   ThemeMode _themeMode = FlutterFlowTheme.themeMode;

//   late AppStateNotifier _appStateNotifier;
//   late GoRouter _router;

//   @override
//   void initState() {
//     super.initState();
//     _appStateNotifier = AppStateNotifier.instance;
//     _router = createRouter(_appStateNotifier);
//   }

//   void setLocale(String language) {
//     setState(() => _locale = createLocale(language));
//   }

//   void setThemeMode(ThemeMode mode) => setState(() {
//         _themeMode = mode;
//         FlutterFlowTheme.saveThemeMode(mode);
//       });

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       title: 'Gamer Guardians',
//       localizationsDelegates: [
//         FFLocalizationsDelegate(),
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//       ],
//       locale: _locale,
//       supportedLocales: const [Locale('en', '')],
//       theme: ThemeData(brightness: Brightness.light),
//       darkTheme: ThemeData(brightness: Brightness.dark),
//       themeMode: _themeMode,
//       routerConfig: _router,
//     );
//   }
// }
