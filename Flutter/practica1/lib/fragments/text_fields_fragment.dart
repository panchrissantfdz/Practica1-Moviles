import 'package:flutter/material.dart';

class TextFieldsFragment extends StatefulWidget {
  const TextFieldsFragment({Key? key}) : super(key: key);

  @override
  State<TextFieldsFragment> createState() => _TextFieldsFragmentState();
}

class _TextFieldsFragmentState extends State<TextFieldsFragment> {
  final TextEditingController _textController = TextEditingController();
  String _displayText = "Escribe algo para ver el resultado aquí.";

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
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
            '📝 TextFields (EditText)',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'El TextField es un widget que permite al usuario ingresar texto, ya sea para rellenar formularios, buscar información, o interactuar con la aplicación. Es esencial para la entrada de datos.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          
          // 🎨 Visual Examples
          const Text(
            '🎨 Ejemplos Visuales',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          // Simple Text Field
          const TextField(
            decoration: InputDecoration(
              labelText: 'Campo de texto simple',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          // Password Field
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Campo de contraseña',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          // Text Field with icon
          const TextField(
            decoration: InputDecoration(
              labelText: 'Campo con icono',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
            ),
          ),
          const SizedBox(height: 16),
          
          // ⚡ Interactive Demonstration
          const Text(
            '⚡ Demostración Interactiva',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _textController,
            decoration: const InputDecoration(
              labelText: 'Escribe aquí para ver el resultado',
              border: OutlineInputBorder(),
            ),
            onChanged: (text) {
              setState(() {
                _displayText = text.isEmpty ? "Escribe algo para ver el resultado aquí." : text;
              });
            },
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
              _displayText,
              style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}