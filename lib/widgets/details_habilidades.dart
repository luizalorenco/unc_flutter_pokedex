import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/HabilidadeScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets/details_habilidades_data.dart';
import 'package:unc_flutter_pokedex/widgets/details_habilidades_titulo.dart';

class DetailHabilidades extends StatelessWidget {
  const DetailHabilidades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as HabilidadeScreenData;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            snap: false,
            floating: false,
            expandedHeight: 50.0,
            flexibleSpace: FlexibleSpaceBar(
              title: DetailHabilidadesTitle(id: arguments.id, name: arguments.name),
            ),
          )
        ],
      ),
    );
  }
}