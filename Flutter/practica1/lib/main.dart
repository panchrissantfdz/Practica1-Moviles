import 'package:flutter/material.dart';
import 'fragments/text_fields_fragment.dart';
import 'fragments/buttons_fragment.dart';
import 'fragments/selection_elements_fragment.dart';
import 'fragments/lists_fragment.dart';
import 'fragments/information_elements_fragment.dart';
import 'package:practica1/second_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Elements App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _fragments = <Widget>[
    const TextFieldsFragment(),
    const ButtonsFragment(), // Added the new fragment here
    const SelectionElementsFragment(),
    const ListsFragment(),
    const InformationElementsFragment(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Elements'),
      ),
      body: _fragments[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'TextFields',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ads_click),
            label: 'Buttons',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Selection',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lists',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}