import 'package:barespuebla/pages/BarPrince.dart';
import 'package:barespuebla/pages/inicio_sesion.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const MyApp(),
      '/inicio_sesion': (context) => const InicioSesion(),
      '/BarPrince': (context2) => PresentationPage(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NIGHTLIFE HUB',
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute: '/',
      routes: {
        '/login': (context) => const InicioSesion(),
        '/BarPrince': (context2) => PresentationPage(),
      },
      home: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.purple,
            child: Column(
              children: [
                Container(
                  width: 250,
                  height: 250,
                  margin: const EdgeInsets.only(top: 50, bottom: 20),
                  child: Image.asset('assets/logo.png'),
                ),
                const Text("",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                Column(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InicioSesion()),
                        );
                      },
                      child: const Text('Ir a Inicio de Sesión'),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text('Comentarios'),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text('Reseñas '),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text('Antros'),
        ),
        body: ListView(
          children: [
            _buildItemWithButton('Prince Savage Club Cholula'),
            _buildItemWithButton2('La Terraza del Chef'),
            _buildItemWithButton3('Sonora Prime'),
            _buildItemWithButton4('Cuarto elemento!'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context2) => PresentationPage()),
                );
              },
              child: const Text('Ir a Inicio de Sesión'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemWithButton(String restaurantName) {
    return ListTile(
      title: Text(restaurantName),
      leading: const Icon(Icons.fmd_good),
    );
  }

  Widget _buildItemWithButton2(String restaurantName) {
    return ListTile(
      title: Text(restaurantName),
      leading: const Icon(Icons.fmd_good),
    );
  }

  Widget _buildItemWithButton3(String restaurantName) {
    return ListTile(
      title: Text(restaurantName),
      leading: const Icon(Icons.fmd_good),
    );
  }

  Widget _buildItemWithButton4(String restaurantName) {
    return ListTile(
      title: Text(restaurantName),
      leading: const Icon(Icons.fmd_good),
    );
  }
}
