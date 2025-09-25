// Archivo: second_screen.dart
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¡Estás en la segunda pantalla!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Usa Navigator.pop para volver a la pantalla anterior
                Navigator.pop(context);
              },
              child: const Text('Regresar a la pantalla principal'),
            ),
          ],
        ),
      ),
    );
  }
}