import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/ItemModel.dart';
import 'package:unc_flutter_pokedex/widgets/item_grid.dart';

//Pegando os itens através do get

class Itens extends StatefulWidget {
  const Itens({Key? key}) : super(key: key);

  @override
  State<Itens> createState() => _ItensState();
}

class _ItensState extends State<Itens> {
  List<Item> item = List.empty();

  @override
  void initState() {
    super.initState();
    getItemFromPokeApi();
  }

  void getItemFromPokeApi() async {
    PokeAPI.getItem().then((response) {
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      setState(() {
        item = data.asMap().entries.map<Item>((element) {
          element.value['id'] = element.key + 1;
          return Item.fromJson(element.value);
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Itens"),
      ),
      body: ItemGrid(item: item),
    );
  }
}