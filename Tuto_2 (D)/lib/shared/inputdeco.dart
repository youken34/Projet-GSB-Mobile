import 'package:flutter/material.dart';

const inputDeco = InputDecoration(
                          
                        enabledBorder: OutlineInputBorder(
              
             borderSide: BorderSide(
               
               color: Color.fromARGB(255, 255, 255, 255),width: 2.0)
               ),
                  // L'input à l'état passif
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red,width: 5.0)
                    ),  
                  // L'input lorsque on écrit à l'intérieur 
                  labelText: 'Identifiant', //
);