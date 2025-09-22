import 'package:flutter/material.dart';

class ButtonsFragment extends StatefulWidget {
  const ButtonsFragment({Key? key}) : super(key: key);

  @override
  State<ButtonsFragment> createState() => _ButtonsFragmentState();
}

class _ButtonsFragmentState extends State<ButtonsFragment> {
  String _message = "Presiona un botón para ver la acción.";

  void _onButtonPressed(String buttonName) {
    setState(() {
      _message = "¡Se presionó el botón de '$buttonName'!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 📝 Title and explanation
          const Text(
            '📝 Botones (Button, ImageButton)',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Los botones son elementos interactivos que el usuario puede presionar para ejecutar una acción, como enviar un formulario, navegar a otra pantalla o realizar un cálculo. Hay varios estilos para diferentes propósitos.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          
          // 🎨 Visual Examples
          const Text(
            '🎨 Ejemplos Visuales',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ElevatedButton
              ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated'),
              ),
              // TextButton
              TextButton(
                onPressed: () {},
                child: const Text('Text'),
              ),
              // OutlinedButton
              OutlinedButton(
                onPressed: () {},
                child: const Text('Outlined'),
              ),
              // IconButton
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {},
                color: Colors.red,
                tooltip: 'Me gusta',
              ),
            ],
          ),
          const SizedBox(height: 16),
          
          // An ImageButton-like example
          GestureDetector(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                '/Users/chrissantfdz/Desktop/Practica1-Moviles/Flutter/practica1/lib/fragments/image.png', // Replace with your image asset
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16),
          
          // ⚡ Interactive Demonstration
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