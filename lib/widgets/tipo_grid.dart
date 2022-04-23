import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/TipoModel.dart';
import 'package:unc_flutter_pokedex/widgets/tipo_card.dart';

class TipoGrid extends StatefulWidget {
  final List<Tipo> tipo;
  const TipoGrid({Key? key, required this.tipo}) : super(key: key);

  @override
  State<TipoGrid> createState() => _TipoGridState();
}

class _TipoGridState extends State<TipoGrid> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widget.tipo
          .map(
            (tipo) => Padding(
              padding: const EdgeInsets.all(2),
              child: TipoCard(id: tipo.id, name: tipo.name),
            ),
          )
          .toList(),
    );
  }
}