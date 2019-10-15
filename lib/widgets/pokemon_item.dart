import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke/models/pokemon.dart';

class PokemonItem extends StatelessWidget {
  final PokemonModel model;

  PokemonItem({
    @required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          backgroundImage: NetworkImage(
        this.model.sprite,
      )),
      title: Text(this.model.name),
      subtitle: Column(
        children: <Widget>[
          Text('${this.model.weight} kg'),
          Text('${this.model.height} cm'),
        ],
      ),
      trailing: Icon(Icons.close),
    );
  }
}
