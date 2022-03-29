import 'package:flutter/material.dart';
import 'package:gsb_application/shared/constants.dart';
import 'package:gsb_application/shared/inputdeco.dart';
import 'package:gsb_application/screens/FicheFrais.dart';
import 'package:gsb_application/screens/home.dart';



class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  
  var _controller = TextEditingController();
  bool notVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
 
            child: Column(
              children: [
                Row(
                   
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Expanded(
              child: TextFormField(
                autofocus: false,
                decoration: InputDecoration(
                 suffixIcon:  IconButton(
                    onPressed: () {
                              setState(() {
                                notVisible!=notVisible;
                              });
                            },
                            icon: Icon(
                              notVisible==true? Icons.visibility: Icons.visibility_off
                            ),
                  ) 
                ),
              )
              ),
              IconButton(icon: Icon(Icons.telegram), onPressed: () {
                      String query = _controller.text;
                      print(query);
                    }
                    ),
            ],
          ),
              ]
        ),
              
      )
    );
  }
}

class BluePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.blue.shade700;
    canvas.drawPath(mainBackground, paint);

    Path ovalPath = Path();
    // Start paint from 20% height to the left
    ovalPath.moveTo(0, height * 0.2);

    // paint a curve from current position to middle of the screen
    ovalPath.quadraticBezierTo(
        width * 0.45, height * 0.25, width * 0.51, height * 0.5);

    // Paint a curve from current position to bottom left of screen at width * 0.1
    ovalPath.quadraticBezierTo(width * 0.58, height * 0.8, width * 0.1, height);

    // draw remaining line to bottom left side
    ovalPath.lineTo(0, height);

    // Close line to reset it back
    ovalPath.close();

    paint.color = Colors.blue.shade600;
    canvas.drawPath(ovalPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}