import 'package:flutter/material.dart';
import 'package:gsb_application/shared/constants.dart';
import 'package:gsb_application/screens/inscription.dart';
import 'package:gsb_application/screens/home.dart';


final inputDeco = InputDecoration(
                          
                        hintStyle: hintDeco,
                          hintText: "Email",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 195, 0, 255),
                                width: 3.0),
                          ),
                          fillColor: Colors.white,
                          filled: true,
);

/*
final barDeco = AppBar(
        backgroundColor: Color.fromARGB(255, 1, 132, 255),
        title: Text('Projet GSB'),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Connexion()),
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
      ); */
