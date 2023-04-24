import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tercer Pagina"),
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
            Navigator.pushNamed(context, '/Cuarta');
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Inicio'),
              onTap: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
            ),
            ListTile(
              title: Text('Segunda Pagina'),
              onTap: () {
                Navigator.pushNamed(context, '/Segunda');
              },
            ),
            ListTile(
              title: Text('Tercer Pagina'),
              onTap: () {
                Navigator.pushNamed(context, '/Tercera');
              },
            ),
            ListTile(
              title: Text('Cuarta Pagina'),
              onTap: () {
                Navigator.pushNamed(context, '/Cuarta');
              },
            ),
          ],
        ),
      ),
    );
  }
}
