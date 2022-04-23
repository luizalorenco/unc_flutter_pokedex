import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/HabModel.dart';
import 'package:unc_flutter_pokedex/widgets/habilidade_grid.dart';

//Pegando as habilidades através do get

class Habilidades extends StatefulWidget {
  const Habilidades({Key? key}) : super(key: key);

  @override
  State<Habilidades> createState() => _HabilidadesState();
}

class _HabilidadesState extends State<Habilidades> {
  List<Habilidade> habilidade = List.empty();

  @override
  void initState() {
    super.initState();
    getHabilidadeFromPokeApi();
  }

  void getHabilidadeFromPokeApi() async {
    PokeAPI.getHabilidade().then((response) {
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      setState(() {
        habilidade = data.asMap().entries.map<Habilidade>((element) {
          element.value['id'] = element.key + 1;
          return Habilidade.fromJson(element.value);
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Habilidades"),
      ),
      body: HabilidadeGrid(habilidade: habilidade),
    );
  }
}