import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/MovimentoScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets/details_movimentos_data.dart';
import 'package:unc_flutter_pokedex/widgets/details_movimentos_titulo.dart';

class DetailMovimentos extends StatelessWidget {
  const DetailMovimentos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as MovimentoScreenData;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            snap: false,
            floating: false,
            expandedHeight: 50.0,
            flexibleSpace: FlexibleSpaceBar(
              title: DetailMovimentosTitle(id: arguments.id, name: arguments.name),
            ),
          )
        ],
      ),
    );
  }
}