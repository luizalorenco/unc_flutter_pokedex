import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/MovimentoScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/movimento_card_data.dart';

class MovimentoCard extends StatelessWidget {
  final int id;
  final String name;

  const MovimentoCard(
      {Key? key, required this.id, required this.name})
      : super(key: key);

  BoxDecoration getContainerDecoration() => BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.withOpacity(0.24), width: 1),
      );

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        enableFeedback: true,
        splashColor: Colors.red[50],
        onTap: () => {
          Navigator.pushNamed(
            context,
            "/detailMovimentos",
            arguments: MovimentoScreenData(id, name),
          )
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: getContainerDecoration(),
          child: Stack(
            children: [
              MovimentoCardData(
                id: id,
                name: name,
              ),
            ],
          ),
        ),
      ),
    );
  }
}