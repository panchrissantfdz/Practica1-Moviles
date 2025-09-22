import 'package:flutter/material.dart';

class InformationElementsFragment extends StatefulWidget {
  const InformationElementsFragment({Key? key}) : super(key: key);

  @override
  State<InformationElementsFragment> createState() =>
      _InformationElementsFragmentState();
}

class _InformationElementsFragmentState
    extends State<InformationElementsFragment> {
  double _progressValue = 0.0;
  String _statusText = "Presiona el botón para iniciar la carga.";

  void _startProgress() {
    setState(() {
      _progressValue = 0.0;
      _statusText = "Cargando...";
    });

    // Simulate a progress update
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _progressValue = 0.3;
      });
    });
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _progressValue = 0.7;
      });
    });
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _progressValue = 1.0;
        _statusText = "¡Carga completada!";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 📝 Título y explicación
          const Text(
            '📝 Elementos de Información (TextView, ImageView, ProgressBar)',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Estos widgets se utilizan para mostrar información estática o de estado al usuario. No están diseñados para recibir entrada, sino para comunicar mensajes, mostrar imágenes o indicar el progreso de una tarea.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          
          // 🎨 Ejemplos Visuales
          const Text(
            '🎨 Ejemplos Visuales',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          // TextView (en Flutter, es simplemente un Text)
          const Text(
            'Ejemplo de un TextView (Text Widget)',
            style: TextStyle(fontSize: 18, color: Colors.purple),
          ),
          const SizedBox(height: 16),
          // ImageView (en Flutter, es un Image)
          // Usaremos un icono de ejemplo en lugar de una imagen de URL para simplicidad.
          const Icon(
            Icons.android,
            size: 100,
            color: Colors.green,
          ),
          const SizedBox(height: 16),
          // ProgressBar (en Flutter, es un LinearProgressIndicator o CircularProgressIndicator)
          const LinearProgressIndicator(
            value: 0.75,
            minHeight: 10,
            backgroundColor: Colors.grey,
            color: Colors.blue,
          ),
          const SizedBox(height: 24),

          // ⚡ Demostración Interactiva
          const Text(
            '⚡ Demostración Interactiva de ProgressBar',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _startProgress,
            child: const Text('Iniciar Carga'),
          ),
          const SizedBox(height: 16),
          LinearProgressIndicator(
            value: _progressValue,
            minHeight: 10,
            backgroundColor: Colors.grey[300],
            color: Colors.green,
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              _statusText,
              style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}