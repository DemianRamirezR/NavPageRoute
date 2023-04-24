import 'package:flutter/material.dart';
import 'page_one.dart';
import 'page_two.dart';
import 'page_three.dart';
import 'page_four.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Rutas Nombradas',
    theme: ThemeData(
        appBarTheme: const AppBarTheme(
      color: Color(0xff39b1ff),
    )),
    // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
    // en el Widget FirstScreen
    initialRoute: '/',
    routes: {
      // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
      '/': (context) => FirstScreen(),
      // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
      '/Segunda': (context) => SecondScreen(),
      '/Tercera': (context) => ThirdScreen(),
      '/Cuarta': (context) => FourScreen(),
    },
  ));
}
