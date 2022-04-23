import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/MovModel.dart';
import 'package:unc_flutter_pokedex/widgets/movimento_grid.dart';

//Pegando os movimentos através do get

class Movimentos extends StatefulWidget {
  const Movimentos({Key? key}) : super(key: key);

  @override
  State<Movimentos> createState() => _MovimentosState();
}

class _MovimentosState extends State<Movimentos> {
  List<Movimento> movimento = List.empty();

  @override
  void initState() {
    super.initState();
    getMovimentoFromPokeApi();
  }

  void getMovimentoFromPokeApi() async {
    PokeAPI.getMovimento().then((response) {
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      setState(() {
        movimento = data.asMap().entries.map<Movimento>((element) {
          element.value['id'] = element.key + 1;
          return Movimento.fromJson(element.value);
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movimentos"),
      ),
      body: MovimentoGrid(movimento: movimento),
    );
  }
}