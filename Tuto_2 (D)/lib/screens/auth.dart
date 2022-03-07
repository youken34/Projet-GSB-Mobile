// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

// ignore: unused_field
bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Scaffold(
        appBar: AppBar(
          title: const Text('Projet GSB'),
        ),
          body: Column(
            children: const [
              SizedBox(
                  height: 10,
              ),
         TextField(
          decoration: InputDecoration(
            hintText: "Entrer votre identifiant", // hintext = placeholder
            labelText: "Identifiant",  // Nom de  l'input (juste au dessus)
            labelStyle: TextStyle( // labelStyle correspond à la balise <style> en css
                fontSize: 24,
                color: Colors.blue
            ), 
            //border: OutlineInputBorder() // bordure autout d'un input
            //border: InputBorder.none
            border: UnderlineInputBorder(),
            fillColor: Colors.black12,
            filled: true, // syntaxe obligatoire, par defaut le remplissage filled = false
            
          ),
          keyboardType: TextInputType.name, // le type peut êtrre choisit tel que : email, nombre, mdp etc...
          obscureText: false, // pour masquer du texte
          maxLength: 10, // longueur max de caractère
          maxLines: 1, // nombre max de ligne
          
        ),
        SizedBox(
          height: 0, // espace entre les deux Textfield
        ),
         TextField(
          decoration: InputDecoration(
            hintText: "Entrer votre Mot de Passe", // hintext = placeholder
            labelText: "Mot de Passe",  // Nom de  l'input (juste au dessus)
            labelStyle: TextStyle( // labelStyle correspond à la balise <style> en css
            fontSize: 24, color: Colors.blue), 
            //border: OutlineInputBorder() // bordure autout d'un input
            //border: InputBorder.none
              suffixIcon: IconButton(
                icon: Icon(Icons.security),
                onPressed: (){
                  setState(() {
                    _secureText = !_secureText;
                  });
                },
          ),
                //suffixIcon pour mettre l'icone à droite
            border: UnderlineInputBorder(),
            fillColor: Colors.black12,
            filled: true, // syntaxe obligatoire, par defaut le remplissage filled = false
            obscureText: _secureText
          ),
          keyboardType: TextInputType.name, // le type peut êtrre choisit tel que : email, nombre, mdp etc...
          obscureText: true, // pour masquer du texte
          maxLength: 10, // longueur max de caractère
          maxLines: 1, // nombre max de ligne
          
        ),
            ],
      )),
    );
  }
}
