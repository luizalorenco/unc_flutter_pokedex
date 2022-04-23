import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/TipoModel.dart';
import 'package:unc_flutter_pokedex/widgets/tipo_grid.dart';

//Pegando os tipos através do get

class Tipos extends StatefulWidget {
  const Tipos({Key? key}) : super(key: key);

  @override
  State<Tipos> createState() => _TiposState();
}

class _TiposState extends State<Tipos> {
  List<Tipo> tipo = List.empty();

  @override
  void initState() {
    super.initState();
    getTipoFromPokeApi();
  }

  void getTipoFromPokeApi() async {
    PokeAPI.getTipo().then((response) {
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      setState(() {
        tipo = data.asMap().entries.map<Tipo>((element) {
          element.value['id'] = element.key + 1;
          return Tipo.fromJson(element.value);
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tipos"),
      ),
      body: TipoGrid(tipo: tipo),
    );
  }
}