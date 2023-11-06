import 'package:flutter/material.dart';

class InicioSesion extends StatelessWidget {
  const InicioSesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de Sesión'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Inicio de Sesión',
                style: TextStyle(fontSize: 32),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Correo Electrónico'),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Contraseña'),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InicioSesion()),
                  );
                },
                child: const Text('Inisiar sesion'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
