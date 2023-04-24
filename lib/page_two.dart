import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda Pagina"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.arrow_forward),
              SizedBox(width: 10),
              Text('Siguiente'),
            ],
          ),
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Color(0xff39b1ff),
            onSurface: Colors.grey,
            elevation: 20,
            minimumSize: Size(150, 60),
            shadowColor: Colors.teal,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          onPressed: () {
            // Navega de regreso a la primera pantalla haciendo clic en la ruta actual
            // fuera de la pila
            Navigator.pushNamed(context, '/Tercera');
          },
        ),
      ),
    );
  }
}
