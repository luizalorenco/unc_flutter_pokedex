import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/ItemScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/item_card_data.dart';

class ItemCard extends StatelessWidget {
  final int id;
  final String name;

  const ItemCard({Key? key, required this.id, required this.name})
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
            "/detailItens",
            arguments: ItemScreenData(id, name),
          )
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: getContainerDecoration(),
          child: Stack(
            children: [
              ItemCardData(id: id, name: name),
            ],
          ),
        ),
      ),
    );
  }
}