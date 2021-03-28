import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'home_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'youlookwhat (景彬)',
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage()
      },
    );
  }
}
