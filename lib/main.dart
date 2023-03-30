import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
      theme:  ThemeData(
        
     // Define el Brightness y Colores por defecto
        brightness: Brightness.dark,
     
        

        // Define la Familia de fuente por defecto
        fontFamily: 'Montserrat',
        
        // Define el TextTheme por defecto. Usa esto para espicificar el estilo de texto por defecto 
        // para cabeceras, títulos, cuerpos de texto, y más.
    

      ),




    );
  }
}