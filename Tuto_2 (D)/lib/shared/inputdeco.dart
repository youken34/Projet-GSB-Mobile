import 'package:flutter/material.dart';
import 'package:gsb_application/shared/constants.dart';

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