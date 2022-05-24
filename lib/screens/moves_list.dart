import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/poke_model.dart';

class MovesList extends StatelessWidget {
  final List<dynamic>? moves;
  const MovesList({ Key? key, this.moves }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: ListView.builder(
        itemCount: moves!.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 40,
            margin: EdgeInsets.all(10),
            color: Colors.red,
            child: Center(
              child: Text(
                'Movimento $index',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white
                ),
              ),
            ),
          );
        },
      ),
    ),
  );
  }
}