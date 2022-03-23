import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold();
  body: Column(
    children: [
      Container(
        color: Colors.red,
        height: 50.0,
        width: 50.0,
      ),
      Container(
        color: Colors.blue,
        height: 50.0,
        width: 50.0,
      ),
      Container(
        child: Text(''),
      )
  ],
  
  
  
  );
}
}