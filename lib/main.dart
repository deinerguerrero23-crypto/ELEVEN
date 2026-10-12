import 'package:flutter/material.dart';

void main() {
  runApp(const MiAplicacion());
}

// 1. El Widget Principal de la App
class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Primera App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PantallaPrincipal(),
    );
  }
}

// 2. La Pantalla Principal que ve el usuario
class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido a Flutter'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¡Hola, Deiner!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aquí programamos qué pasa cuando presionan el botón
                print('Botón presionado');
              },
              child: const Text('Presióname'),
            ),
          ],
        ),
      ),
    );
  }
}
