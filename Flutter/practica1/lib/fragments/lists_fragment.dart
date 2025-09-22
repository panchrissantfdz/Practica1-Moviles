import 'package:flutter/material.dart';

class ListsFragment extends StatelessWidget {
  const ListsFragment({Key? key}) : super(key: key);

  final List<String> _items = const [
    'Elemento 1',
    'Elemento 2',
    'Elemento 3',
    'Elemento 4',
    'Elemento 5',
    'Elemento 6',
    'Elemento 7',
    'Elemento 8',
    'Elemento 9',
    'Elemento 10',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 📝 Título y explicación
          const Text(
            '📝 Listas (RecyclerView o ListView)',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Las listas son esenciales para mostrar grandes colecciones de datos de forma organizada y eficiente, permitiendo al usuario desplazarse a través de ellos. Flutter utiliza widgets como ListView y ListView.builder para renderizar listas.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          
          // 🎨 Ejemplos Visuales
          const Text(
            '🎨 Ejemplos Visuales',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          // Usamos un ListView simple para la demostración visual.
          SizedBox(
            height: 200, // Limita la altura para que no ocupe toda la pantalla
            child: ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Opción de Lista 1'),
                ),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Opción de Lista 2'),
                ),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Opción de Lista 3'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // ⚡ Demostración Interactiva
          const Text(
            '⚡ Demostración Interactiva con ListView.builder',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          // ListView.builder para crear una lista dinámica
          SizedBox(
            height: 300, // Limita la altura para el ejemplo interactivo
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                  child: ListTile(
                    leading: const Icon(Icons.article),
                    title: Text(_items[index]),
                    subtitle: Text('Subtítulo del ${_items[index]}'),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Has presionado ${_items[index]}'),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}