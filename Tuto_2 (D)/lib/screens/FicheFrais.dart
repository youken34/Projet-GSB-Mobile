import 'package:flutter/material.dart';
import 'package:gsb_application/screens/home.dart';
import 'package:gsb_application/screens/inscription.dart';

class FicheFrais extends StatefulWidget {
  const FicheFrais({Key? key}) : super(key: key);

  @override
  State<FicheFrais> createState() => _FicheFraisState();
}

class _FicheFraisState extends State<FicheFrais> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Projet GSB'),
        actions: [
          TextButton(
            style: style,
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Inscription()),
              )
            },
            child: const Text('Page Connexion'),
          ),
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('Historique'),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0), //Padding
          child: Form(
              child: Column(children: <Widget>[
            Image.asset('assets/images/GSB2.png',
                height: 100.0, width: 100.0), // Propriété du logo
            SizedBox(height: 15.0), // Définition des proportions de la 'box'
            TextFormField(
                decoration: InputDecoration(
                    labelText: 'Nombre de Kilomètres',
                    // Nom de l'input
                    border: OutlineInputBorder())),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'Indémnités Kilométriques',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            TextFormField(
                decoration: InputDecoration(
                    labelText: 'Restauration', border: OutlineInputBorder())),
            TextFormField(
                decoration: InputDecoration(
                    labelText: 'Hôtel', border: OutlineInputBorder())),

            TextFormField(
                decoration: InputDecoration(
                    labelText: 'Evènementiel', border: OutlineInputBorder())),
          ])),
        ),
      ),
    );
  }
}
