import 'package:flutter/material.dart';

class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  _ConnexionState createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.purple,
              title: Text('Projet GSB'),
              actions: [
                TextButton(
                  style: style,
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Connexion()),
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
                    padding: EdgeInsets.symmetric(
                        vertical: 50.0, horizontal: 30.0), //Padding
                    child: Form(
                        child: Column(children: <Widget>[
                      Image.asset('assets/images/GSB2.png',
                          height: 100.0, width: 100.0), // Propriété du logo
                      SizedBox(
                          height:
                              15.0), // Définition des proportions de la 'box'
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
                    ]))))));
  }
}



// AppBar

// appBar: AppBar(
//         backgroundColor: Colors.purple,
//         title: Text('Projet GSB'),
//         actions: [
//           TextButton(
//             style: style,
//             onPressed: () => {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const Home()),
//               )
//             },
//             child: const Text('Page Connexion'),
//           ),
//           TextButton(
//             style: style,
//             onPressed: () {},
//             child: const Text('Historique'),
//           )
//         ],
//       ),