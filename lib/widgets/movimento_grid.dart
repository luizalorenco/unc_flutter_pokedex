import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/MovModel.dart';
import 'package:unc_flutter_pokedex/widgets/movimento_card.dart';

class MovimentoGrid extends StatefulWidget {
  final List<Movimento> movimento;
  const MovimentoGrid({Key? key, required this.movimento}) : super(key: key);

  @override
  State<MovimentoGrid> createState() => _MovimentoGridState();
}

class _MovimentoGridState extends State<MovimentoGrid> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widget.movimento
          .map(
            (movimento) => Padding(
              padding: const EdgeInsets.all(2),
              child: MovimentoCard(id: movimento.id, name: movimento.name),
            ),
          )
          .toList(),
    );
  }
}