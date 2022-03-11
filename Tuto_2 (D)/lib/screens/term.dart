import 'package:flutter/material.dart';

class TermScreen extends StatefulWidget {
  const TermScreen({Key? key}) : super(key: key);

  @override
  _TermScreenState createState() => _TermScreenState();
}

class _TermScreenState extends State<TermScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('coucou'),
        ),
      ),
    );
  }
}
