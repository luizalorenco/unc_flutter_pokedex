import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/PokemonScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/pokemon_card_background.dart';
import 'package:unc_flutter_pokedex/widgets/pokemon_card_data.dart';

class PokemonCard extends StatelessWidget {
  final int? id;
  final String? name;
  //final String image;

  const PokemonCard({
    Key? key,
    this.id,
    this.name,
    //required this.image,
  }) : super(key: key);

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
            "/details",
            arguments: PokemonScreenData(name),
          )
        },
        child: Container(
          padding: const EdgeInsets.all(7),
          decoration: getContainerDecoration(),
          child: Stack(
            children: [
              PokemonCardBackground(id: id),
              PokemonCardData(name: name),
            ],
          ),
        ),
      ),
    );
  }
}