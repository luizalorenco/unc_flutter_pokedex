import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/PokeModel.dart';
import 'package:unc_flutter_pokedex/widgets/pokemon_grid.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Pokemon> pokemon = List.empty();

  @override
  void initState() {
    super.initState();
    getPokemonFromPokeApi();
  }

  void getPokemonFromPokeApi() async {
    PokeAPI.getPokemon().then((response) {
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      setState(() {
        pokemon = data.asMap().entries.map<Pokemon>((element) {
          element.value['id'] = element.key + 1;
          element.value['img'] =
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${element.key + 1}.png";
          return Pokemon.fromJson(element.value);
        }).toList();
      });
    });
  }

  //Criando um menu lateral
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            //Definindo os detalhes do menu lateral (gif, nome, lista)
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 130,
                    height: 130,
                    child: Image.network(
                        'https://pa1.narvii.com/5744/4e0161f94017b5ea55795e72eb1031fa017f2854_hq.gif'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Pokédex',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            //Lista das outras telas no menu e as rotas definidas para acessa-las
            ListTile(
              title: const Text(
                'Tipos',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/tipos");
              },
            ),
            ListTile(             
              title: const Text('Habilidades', style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/habilidades");
              },
            ),
            ListTile(
              title: const Text('Movimentos', style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/movimentos");
              },
            ),
            ListTile(
              title: const Text('Itens', style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/itens");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Pokédex"),
      ),
      body: PokemonGrid(pokemon: pokemon),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Share',
        child: const Icon(
          Icons.share_rounded,
        ),
      ),
    );
  }
}