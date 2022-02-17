import 'package:flutter/material.dart';
import 'package:gsb_application/screens/home.dart';
import 'screens/auth.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: AuthScreen(),
      home: AuthScreen(),
    );
  }
}
