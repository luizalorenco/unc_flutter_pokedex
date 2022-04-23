import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/TipoScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/tipo_card_data.dart';

class TipoCard extends StatelessWidget {
  final int id;
  final String name;

  const TipoCard({Key? key, required this.id, required this.name})
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
            "/detailTipos",
            arguments: TipoScreenData(id, name),
          )
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: getContainerDecoration(),
          child: Stack(
            children: [
              //TipoCardBackground(id: id),
              TipoCardData(id: id, name: name),
            ],
          ),
        ),
      ),
    );
  }
}