import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/TipoScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets/details_tipos_data.dart';
import 'package:unc_flutter_pokedex/widgets/details_tipos_titulo.dart';

//Declarando o que acontece ao clicar em um dos tipos da lista 

class DetailTipos extends StatelessWidget {
  const DetailTipos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as TipoScreenData;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            snap: false,
            floating: false,
            expandedHeight: 50.0,
            flexibleSpace: FlexibleSpaceBar(
              title: DetailTiposTitle(id: arguments.id, name: arguments.name),
            ),
          )
        ],
      ),
    );
  }
}