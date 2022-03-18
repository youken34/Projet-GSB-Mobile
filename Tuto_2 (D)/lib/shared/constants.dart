import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                     
            enabledBorder: UnderlineInputBorder(
              
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255),width: 2.0)),
                  // L'input à l'état passif
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 5.0)),  
                  // L'input lorsque on écrit à l'intérieur 
                  labelText: 'Identifiant', // Nom de l'input
                  
                          
                  labelStyle : TextStyle( 
                    
                    color: Color.fromARGB(255, 202, 114, 253),
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                    
                      )
);