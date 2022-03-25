import 'package:flutter/material.dart';
import 'package:gsb_application/shared/constants.dart';
import 'package:gsb_application/shared/inputdeco.dart';
import 'package:gsb_application/screens/FicheFrais.dart';
import 'package:gsb_application/screens/home.dart';
import 'package:gsb_application/screens/test.dart';

class Inscription extends StatelessWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 1, 132, 255),
        title: Text('Projet GSB'),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Connexion()),
              )
            },
            child: const Text('Page Connexion'),
          ),
          TextButton(
            style: TextButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
            onPressed: () => {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Inscription()),
              )
            },
            child: const Text('Inscription'),
          )
        ],
      ),
      body: CustomPaint(
        
        painter: BluePainter(),
         child: Center(
           
              // Tout le container dans cette parenthèse va être centré
              
              //constraints: BoxConstraints.expand(),
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                  child: Column(
                  // étant donné que le "child" est de type Column, tous les éléments
                  // s'afficheront verticalement
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    //Align(
                    //alignment: Alignment.centerLeft),

                    //Text('Test'),

                    Image.asset('assets/images/GSB2.png',
                        height: 200.0, width: 200.0), // Propriété du logo
                    SizedBox(height: 15.0),
                    // Définition des proportions de la 'box'
                    Material(
                      
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      elevation: 20.0,
                      shadowColor: Colors.black,
                      
                      child: TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "ConcertOne",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                          hintText: 'Prénom',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 195, 0, 255),
                                width: 3.0),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),

                    Wrap(
                        spacing:
                            20, // to apply margin in the main axis of the wrap
                        runSpacing:
                            20, // to apply margin in the cross axis of the wrap
                        children: <Widget>[Text(''), Text('')]),
                    Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      elevation: 20.0,
                      shadowColor: Colors.black,
                      child: TextFormField(
                        autofocus: false,
                        
                        decoration: InputDecoration(
                          hintText: 'Nom',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "ConcertOne",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 195, 0, 255),
                                width: 3.0),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    Wrap(
                        spacing:
                            20, // to apply margin in the main axis of the wrap
                        runSpacing:
                            20, // to apply margin in the cross axis of the wrap
                        children: <Widget>[Text(''), Text('')]),
                  Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      elevation: 20.0,
                      shadowColor: Colors.black,
                      child: TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "ConcertOne",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                          hintText: 'Identifiant',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 195, 0, 255),
                                width: 3.0),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    Wrap(
                        spacing:
                            20, // to apply margin in the main axis of the wrap
                        runSpacing:
                            20, // to apply margin in the cross axis of the wrap
                        children: <Widget>[Text(''), Text('')]),
                   Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      elevation: 20.0,
                      shadowColor: Colors.black,
                      child: TextFormField(
                        style: TextStyle(

                        ),
                        autofocus: false,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            fontFamily: "ConcertOne",
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                          hintText: 'Email',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 195, 0, 255),
                                width: 3.0),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    Wrap(
                        spacing:
                            20, // to apply margin in the main axis of the wrap
                        runSpacing:
                            20, // to apply margin in the cross axis of the wrap
                        children: <Widget>[Text(''), Text('')]),

                   Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      elevation: 20.0,
                      shadowColor: Colors.black,
                      child: TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            
                            fontWeight: FontWeight.w700,
                            fontFamily: "ConcertOne",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                          hintText: 'Mot de Passe',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 195, 0, 255),
                                width: 3.0),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    Wrap(
                        spacing:
                            20, // to apply margin in the main axis of the wrap
                        runSpacing:
                            20, // to apply margin in the cross axis of the wrap
                        children: <Widget>[Text(''), Text('')]),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 0.0,
                      ),
                      child: TextButton(
                          onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Inscription()),
                                )
                              },
                          child: const Text('Envoyer',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w900,
                                  fontFamily: "Candal"
                                  )),
                          style: TextButton.styleFrom(
                              // également possible avec style: TextButton(foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 195, 0, 255)),
                              elevation: 20,
                              shadowColor: Color.fromARGB(255, 195, 0, 255),
                              backgroundColor: Colors.white,
                              primary: Color.fromARGB(255, 195, 0, 255),
                              minimumSize: Size(390.0, 60.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                //side: BorderSide(color: Color.fromARGB(255, 195, 0, 255), width: 2),
                              ))),
                    ),
                  ])),
         )
      ),
    );
  }
}
//  floatingLabelStyle: _builtTextStyle(Colors.white),
class BluePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Color.fromARGB(255, 162, 0, 255);
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

    paint.color = Color.fromARGB(255, 243, 243, 243);
    canvas.drawPath(ovalPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
