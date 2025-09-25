import 'package:flutter/material.dart';
import 'package:practica1/second_screen.dart';

class ButtonsFragment extends StatefulWidget {
  const ButtonsFragment({Key? key}) : super(key: key);

  @override
  State<ButtonsFragment> createState() => _ButtonsFragmentState();
}

// Modificación del archivo buttons_fragment.dart

class _ButtonsFragmentState extends State<ButtonsFragment> {
  String _message = "Presiona un botón para ver la acción.";

  void _onButtonPressed(String buttonName) {
    setState(() {
      _message = "¡Se presionó el botón de '$buttonName'!";
    });
  }

  // Nuevo método para navegar
  void _goToSecondScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SecondScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ... Código existente del fragmento
          // ⚡ Demostración Interactiva
          const Text(
            '⚡ Demostración Interactiva',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => _onButtonPressed('ElevatedButton'),
            child: const Text('Presiona Aquí'),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () => _onButtonPressed('TextButton'),
            child: const Text('O Aquí'),
          ),
          const SizedBox(height: 16),
          // Nuevo botón para navegar a la segunda pantalla
          ElevatedButton(
            onPressed: () => _goToSecondScreen(context), // Llama a la función de navegación
            child: const Text('Ir a Segunda Pantalla'),
          ),
          const SizedBox(height: 16),
          
          Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey),
            ),
            child: Text(
              _message,
              style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}