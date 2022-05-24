import 'package:flutter/material.dart';

class DetailOptionsButton extends StatelessWidget {
  const DetailOptionsButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed:() {
        Navigator.of(context).pushNamed('/moveslist');
      },
      tooltip: 'Listar Movimentos',
        child: const Icon(Icons.list),
        );
  }
}