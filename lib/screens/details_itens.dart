import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/ItemScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets/details_itens_data.dart';
import 'package:unc_flutter_pokedex/widgets/details_itens_titulo.dart';

//Declarando o que acontece ao clicar em um dos itens da lista

class DetailItens extends StatelessWidget {
  const DetailItens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ItemScreenData;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            snap: false,
            floating: false,
            expandedHeight: 50.0,
            flexibleSpace: FlexibleSpaceBar(
              title: DetailItensTitle(id: arguments.id, name: arguments.name),
            ),
          )
        ],
      ),
    );
  }
}