import 'package:flutter/material.dart';

class FourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // número de tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cuarta Pantalla'),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Tab 1',
              ),
              Tab(
                text: 'Tab 2',
              ),
              Tab(
                text: 'Tab 3',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: ElevatedButton(
                child: Text('Primera Pagina'),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Color(0xff39b1ff),
                  onSurface: Colors.grey,
                  elevation: 20,
                  minimumSize: Size(150, 60),
                  shadowColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Text('Segunda Pagina'),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Color(0xff39b1ff),
                  onSurface: Colors.grey,
                  elevation: 20,
                  minimumSize: Size(150, 60),
                  shadowColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Text('Tercer Pagina'),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Color(0xff39b1ff),
                  onSurface: Colors.grey,
                  elevation: 20,
                  minimumSize: Size(150, 60),
                  shadowColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Tercera');
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.home),
                    SizedBox(width: 10),
                    Text('Inicio'),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Color(0xff39b1ff),
                  onSurface: Colors.grey,
                  elevation: 20,
                  minimumSize: Size(150, 60),
                  shadowColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
