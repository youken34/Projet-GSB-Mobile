import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              // le crossaxisaligment aligne tout les elements de la colonne.
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //la fonction riche text permet d'inclure plusieurs text avec plusieurs css
                RichText(
                  text: TextSpan(
                    text: 'Everyone has\n'.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                    ),
                    children: [
                      TextSpan(
                        text: 'knowledge\n'.toLowerCase(),
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: 'to share'.toLowerCase()),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'It all starts  here',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                // Le sizedbox permet de faire un espace de x pixels
                const SizedBox(
                  height: 100.0,
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('Entrez votre email'),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'ex:z',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      RaisedButton(
                        color: Colors.blue,
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        onPressed: () => print('send'),
                        child: Text(
                          'Continue'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
