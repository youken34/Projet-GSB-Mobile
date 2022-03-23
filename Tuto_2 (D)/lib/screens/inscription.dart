import 'package:flutter/material.dart';
import 'package:gsb_application/shared/constants.dart';

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
              color: Color.fromARGB(255, 202, 202, 202),
            ),
            padding: EdgeInsets.symmetric(
              vertical: 20.0,
            ),

            height: 650,
           
            //constraints: BoxConstraints.expand(),

            child: Container(
              
                height: 562,
                alignment: Alignment.center,
                width: 600,
                padding: EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 225, 0, 255),
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 195, 0, 255),
                      offset: const Offset(0, 0), // Définie le décalage
                      blurRadius:
                          30.0, // Définie à quel point l'ombre est floue
                      spreadRadius: 6.0, // Définie le rayon de diffusion
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
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
                      TextFormField(
                        textAlign: TextAlign
                            .left, // Ici c'est le text à l'intérieur de l'input qui est définit
                        decoration: textInputDecoration.copyWith(
                            labelText: 'Nom',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 195, 0, 255),
                                  width: 3.0),
                            )),
                      ),
                      Wrap(
                          spacing:
                              20, // to apply margin in the main axis of the wrap
                          runSpacing: 20, // to apply margin in the cross axis of the wrap
                          children: <Widget>[Text(''), Text('')]),
                      TextFormField(
                        decoration: textInputDecoration.copyWith(
                            labelText: 'Prénom',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 195, 0, 255),
                                  width: 3.0),
                            )),
                        obscureText: true,
                      ),
                      Wrap(
                          spacing:
                              20, // to apply margin in the main axis of the wrap
                          runSpacing: 20, // to apply margin in the cross axis of the wrap
                          children: <Widget>[Text(''), Text('')]),
                      TextFormField(
                        decoration: textInputDecoration.copyWith(
                            labelText: 'Identifiant',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 195, 0, 255),
                                  width: 3.0),
                            )),
                      ),
                      Wrap(
                          spacing:
                              20, // to apply margin in the main axis of the wrap
                          runSpacing: 20, // to apply margin in the cross axis of the wrap
                          children: <Widget>[Text(''), Text('')]),
                      TextFormField(
                        decoration: textInputDecoration.copyWith(
                            labelText: 'Mot de passe',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 195, 0, 255),
                                  width: 3.0),
                            )),
                      ),
                      Wrap(
                          spacing:
                              20, // to apply margin in the main axis of the wrap
                          runSpacing: 20, // to apply margin in the cross axis of the wrap
                          children: <Widget>[Text(''), Text('')]),

                      TextFormField(
                        decoration: textInputDecoration.copyWith(
                            labelText: 'Email',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 195, 0, 255),
                                  width: 3.0),
                            )),
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0,),
                        
                        child: TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Inscription()),
                            )
                          },
                          child: const Text('Envoyer', 
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900)
                          ),
                          style: TextButton.styleFrom( // également possible avec style: TextButton(foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 195, 0, 255)),
                            elevation: 20,
                            shadowColor: Color.fromARGB(255, 195, 0, 255),
                            backgroundColor: Colors.white,
                            primary: Color.fromARGB(255, 195, 0, 255),
                            minimumSize: Size(370.0, 50.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                //side: BorderSide(color: Color.fromARGB(255, 195, 0, 255), width: 2),
                              )
                            )
                          ),
                          
                          
                        ),
                        
                      
                       SizedBox(width: 100,),
                    ])),
          )
        ],
      ),
    );
  }
}
//  floatingLabelStyle: _builtTextStyle(Colors.white),
