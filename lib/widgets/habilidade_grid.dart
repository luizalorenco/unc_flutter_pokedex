import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/HabModel.dart';
import 'package:unc_flutter_pokedex/widgets/habilidade_card.dart';

class HabilidadeGrid extends StatefulWidget {
  final List<Habilidade> habilidade;
  const HabilidadeGrid({Key? key, required this.habilidade}) : super(key: key);

  @override
  State<HabilidadeGrid> createState() => _HabilidadeGridState();
}

class _HabilidadeGridState extends State<HabilidadeGrid> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widget.habilidade
          .map(
            (habilidade) => Padding(
              padding: const EdgeInsets.all(2),
              child: HabilidadeCard(id: habilidade.id, name: habilidade.name),
            ),
          )
          .toList(),
    );
  }
}