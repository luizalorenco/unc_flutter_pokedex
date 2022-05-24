import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/screens/details.dart';
import 'package:unc_flutter_pokedex/screens/home.dart';
import 'package:unc_flutter_pokedex/screens/details_pokemon.dart';
import 'package:unc_flutter_pokedex/screens/moves_list.dart';

void main() {
  // chamando o App para execuçao
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokédex',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // iniciando o conceito de navegação por rotas
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        // já criando a rota para exibir os detalhes
        // do pokémon
        //"/details": (context) => const Details(),
        "/details": (context) => const DetailsPokemon(
            url: "https://pokeapi.co/api/v2/pokemon/charmander"),
            "/moveslist":(context) => const MovesList(
              moves: [],
            ),
      },
    );
  }
}