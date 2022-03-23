import 'package:flutter/material.dart';
import 'package:gsb_application/shared/constants.dart';
import 'package:gsb_application/shared/inputdeco.dart';

class Inscription extends StatelessWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              // Tout le container dans cette parenthèse va être centré
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 0, 0, 0),
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
              height: 640,

              //constraints: BoxConstraints.expand(),
              child: Column(

                  // étant donné que le "child" est de type Column, tous les éléments
                  // s'afficheront verticalement
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //Align(
                    //alignment: Alignment.centerLeft),

                    //Text('Test'),

                    Image.asset('assets/images/gsb.png',
                        height: 100.0, width: 100.0), // Propriété du logo
                    SizedBox(height: 25.0),
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
                            fontFamily: "Comic sans MS",
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
                            fontFamily: "Comic sans MS",
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
                            fontFamily: "Comic sans MS",
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
                        autofocus: false,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "Schyler",
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
                            fontFamily: "DayRoman",
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
                                  fontSize: 18, fontWeight: FontWeight.w900)),
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
        ],
      ),
    );
  }
}
//  floatingLabelStyle: _builtTextStyle(Colors.white),
