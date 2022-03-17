import 'package:flutter/material.dart';
import 'package:gsb_application/screens/home.dart';

class Inscription extends StatelessWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
      appBar: AppBar(
        title: Text('Projet GSB'),
        actions: [
          TextButton(
            style: style,
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
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
            Image.asset('assets/images/gsb.png',
                height: 100.0, width: 100.0), // Propriété du logo
            SizedBox(height: 15.0), // Définition des proportions de la 'box'
            TextFormField(
                decoration: InputDecoration(
                    labelText: 'Identifiant',
                    // Nom de l'input
                    border: OutlineInputBorder())),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'Mot de Passe',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            TextFormField(
                decoration: InputDecoration(
                    labelText: 'Nom', border: OutlineInputBorder())),
            TextFormField(
                decoration: InputDecoration(
                    labelText: 'Prénom', border: OutlineInputBorder())),

            TextFormField(
                decoration: InputDecoration(
                    labelText: 'Mail', border: OutlineInputBorder())),
          ])),
        ),
      ),
    );
  }
}
