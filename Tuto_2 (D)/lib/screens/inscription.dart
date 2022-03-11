import 'package:flutter/material.dart';

class Inscription extends StatelessWidget {
  const Inscription({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
body: SingleChildScrollView(
  child: Container(
    padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0), //Padding
      child: Form(
        child: Column (
            children: <Widget>[
                Image.asset('assets/images/gsb.png', height: 100.0, width: 100.0), // Propriété du logo
                SizedBox(height: 15.0),// Définition des proportions de la 'box'
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Identifiant',
                     // Nom de l'input
                    border: OutlineInputBorder()
                    
                  )
                  
                ),
                
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Mot de Passe',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nom',
                    border: OutlineInputBorder()

                  )
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Prénom',
                    border: OutlineInputBorder()

                  )
                ),
                
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Mail',
                    border: OutlineInputBorder()

                  )
                ),

              ]
            )
          ),
        ),
      ),

    );
    }
  }