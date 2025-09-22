import 'package:flutter/material.dart';

class SelectionElementsFragment extends StatefulWidget {
  const SelectionElementsFragment({Key? key}) : super(key: key);

  @override
  _SelectionElementsFragmentState createState() =>
      _SelectionElementsFragmentState();
}

class _SelectionElementsFragmentState extends State<SelectionElementsFragment> {
  bool _isCheckboxChecked = false;
  String? _selectedRadioOption; // Nullable to represent no selection
  bool _isSwitchOn = false;
  String _message = "Selecciona una opción para ver la acción.";

  void _updateMessage() {
    String checkboxState = _isCheckboxChecked ? "Marcado" : "No marcado";
    String radioState = _selectedRadioOption ?? "Ninguno";
    String switchState = _isSwitchOn ? "Encendido" : "Apagado";

    setState(() {
      _message =
          "Checkbox: $checkboxState\nRadio: $radioState\nSwitch: $switchState";
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
            '📝 Elementos de Selección (CheckBox, RadioButton, Switch)',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Estos widgets permiten a los usuarios elegir entre opciones predefinidas. Los CheckBox permiten múltiples selecciones, los RadioButton una sola opción de un grupo, y los Switch activan o desactivan un ajuste.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          
          // 🎨 Visual Examples
          const Text(
            '🎨 Ejemplos Visuales',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          // CheckBox
          Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (bool? value) {},
              ),
              const Text('Opción de Checkbox'),
            ],
          ),
          // RadioButton Group
          Row(
            children: [
              Radio<String>(
                value: 'Opción 1',
                groupValue: 'Opción 1',
                onChanged: (String? value) {},
              ),
              const Text('Opción de Radio'),
            ],
          ),
          // Switch
          Row(
            children: [
              Switch(
                value: true,
                onChanged: (bool value) {},
              ),
              const Text('Opción de Switch'),
            ],
          ),
          const SizedBox(height: 24),
          
          // ⚡ Interactive Demonstration
          const Text(
            '⚡ Demostración Interactiva',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          // Interactive CheckBox
          Row(
            children: [
              Checkbox(
                value: _isCheckboxChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _isCheckboxChecked = value ?? false;
                    _updateMessage();
                  });
                },
              ),
              const Text('Aceptar términos y condiciones'),
            ],
          ),
          const SizedBox(height: 8),
          // Interactive RadioButtons
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Elige tu color favorito:'),
              ListTile(
                title: const Text('Rojo'),
                leading: Radio<String>(
                  value: 'Rojo',
                  groupValue: _selectedRadioOption,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedRadioOption = value;
                      _updateMessage();
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Azul'),
                leading: Radio<String>(
                  value: 'Azul',
                  groupValue: _selectedRadioOption,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedRadioOption = value;
                      _updateMessage();
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Interactive Switch
          Row(
            children: [
              const Text('Activar notificaciones'),
              Switch(
                value: _isSwitchOn,
                onChanged: (bool value) {
                  setState(() {
                    _isSwitchOn = value;
                    _updateMessage();
                  });
                },
              ),
            ],
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