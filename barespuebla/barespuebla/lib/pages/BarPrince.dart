import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PresentationPage(),
  ));
}

class PresentationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Presentación del Lugar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Imagen del lugar
            Image.asset(
              'assets/lugar_image.jpg', // Reemplaza 'assets/lugar_image.jpg' con la ruta de tu imagen
              width: 200, // Ajusta el ancho de la imagen según tus necesidades
              height: 200, // Ajusta la altura de la imagen según tus necesidades
            ),
            SizedBox(height: 20), // Espacio entre la imagen y el texto
            // Descripción del lugar
            Text(
              'Bienvenido al hermoso lugar X. Este lugar es conocido por su belleza natural y su rica historia. Disfruta de la tranquilidad y la serenidad que este lugar tiene para ofrecer.',
              textAlign: TextAlign.center, // Alinea el texto al centro
            ),
          ],
        ),
      ),
    );
  }
}
