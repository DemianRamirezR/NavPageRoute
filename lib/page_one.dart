import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina Inicial'),
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
            // Navega a la segunda pantalla usando una ruta con nombre
            Navigator.pushNamed(context, '/Segunda');
          },
        ),
      ),
    );
  }
}
