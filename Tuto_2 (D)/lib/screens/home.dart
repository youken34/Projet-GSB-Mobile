import 'package:flutter/material.dart';
import 'package:gsb_application/screens/FicheFrais.dart';
import 'package:gsb_application/screens/inscription.dart';
import 'package:http/http.dart' as http;


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
                  style: TextButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
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
                  style: TextButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
            onPressed: () => {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Inscription()),
              )
            },
            child: const Text('Inscription'),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FicheFrais()),
                            );
                          },
                          child: const Text('Connexion'),
                          style: ElevatedButton.styleFrom(
                              // shadowColor: Colors.white,
                              primary: Colors.white,
                              onPrimary: Colors.purple, // background color
                              minimumSize: Size(340, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ]))))));
  }
}



// AppBar

// a mettre dans le build context 
// final ButtonStyle style =
//         TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

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