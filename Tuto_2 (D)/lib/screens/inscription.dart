import 'package:flutter/material.dart';

class Inscription extends StatelessWidget {
  const Inscription({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
body: SingleChildScrollView(

  child: Center( // Tout le container dans cette parenthèse va être centré
  
  
  child: Container(

    //alignment: Alignment.centerRight,
    //margin: EdgeInsets.all(100.0),
    decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.purpleAccent,
          
          ),
    padding: EdgeInsets.symmetric(vertical: 20.0),
    width: 360,
    
    height: 600, //Padding
      
      child : Form(
        
        child: Column (
          
          
            children: <Widget>[
                //Align(
                //alignment: Alignment.centerLeft),
                
                //Text('Test'),
                
                Image.asset('assets/images/gsb.png', height: 100.0, width: 100.0), // Propriété du logo
                SizedBox(height: 25.0),// Définition des proportions de la 'box'
                TextFormField(                
                textAlign: TextAlign.left, // Ici c'est le text à l'intérieur de l'input qui est définit
                decoration: InputDecoration(               
                  labelText: 'Identifiant', // Nom de l'input
                  border: UnderlineInputBorder(),            
                  labelStyle : TextStyle( 
                     
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                    
                      )
                          
                )
                
              ),
                
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Mot de Passe',
                    
                    border: UnderlineInputBorder(),            
                  labelStyle : TextStyle(  
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                    
                      )
                  ),
                  obscureText: true,
                  
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nom',
                    border: UnderlineInputBorder(),            
                  labelStyle : TextStyle(  
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                    
                      )
                  )
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Prénom',
                    border: UnderlineInputBorder(),            
                  labelStyle : TextStyle(  
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                    
                      )
                  )
                ),
                
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Mail',
                    border: UnderlineInputBorder(),            
                  labelStyle : TextStyle(  
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                    
                      )
                  )
                ),
                Padding(

            padding: const EdgeInsets.symmetric(vertical: 60.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                
              },
              child: const Text('Envoyer'),
                  
              style: ElevatedButton.styleFrom(
                //shadowColor: Colors.white,
                primary: Colors.white,
                onPrimary: Colors.purple, // background color
                minimumSize: Size(340, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              ),
            ),
          ),
          

              ]
              
            )
          ),
        ),
  )
      ),

    );
    }
  }