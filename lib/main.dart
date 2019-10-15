import 'package:flutter/material.dart';

import './models/pokemon.dart';
import './widgets/pokemon_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Pokédex'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List<PokemonModel> data = <PokemonModel>[
    PokemonModel(
      id: 1,
      name: 'Bulbasaur',
      sprite:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png',
      weight: 6.9,
      height: 70.0,
    ),
    PokemonModel(
      id: 2,
      name: 'Ivysaur',
      sprite:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png',
      weight: 13.0,
      height: 100.0,
    ),
    PokemonModel(
      id: 3,
      name: 'Venusaur',
      sprite:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png',
      weight: 100.0,
      height: 200.0,
    ),
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: this.data.length,
        itemBuilder: (
          BuildContext context,
          int index,
        ) {
          return PokemonItem(
            model: this.data[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
