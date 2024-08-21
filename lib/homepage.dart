import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dropdown Example'),
        ),
        body: DropdownExample(),
      ),
    );
  }
}

class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String? _selectedItem;

  final List<String> _items = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Mango',
    'Grape'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        value: _selectedItem,
        hint: Text('Select an item'),
        items: _items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            _selectedItem = newValue;
          });
        },
      ),
    );
  }
}
