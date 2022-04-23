import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/screens/details_mov.dart';
import 'package:unc_flutter_pokedex/screens/habilidade.dart';
import 'package:unc_flutter_pokedex/screens/details.dart';
import 'package:unc_flutter_pokedex/screens/home.dart';
import 'package:unc_flutter_pokedex/screens/itens.dart';
import 'package:unc_flutter_pokedex/screens/movimentos.dart';
import 'package:unc_flutter_pokedex/screens/tipos.dart';
import 'package:unc_flutter_pokedex/screens/details_tipos.dart';
import 'package:unc_flutter_pokedex/screens/details_mov.dart';
import 'package:unc_flutter_pokedex/screens/details_itens.dart';
import 'package:unc_flutter_pokedex/screens/details_hab.dart';

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
      // iniciando o conceito de navegação por rotas, definindo que a rota inicial é a Home
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        // já criando a rota para exibir os detalhes do pokémon
        // criando as rotas para todas as telas principais e detalhes
        "/details": (context) => const Details(),
        "/tipos": (context) => const Tipos(),
       "/detailTipos": (context) => const DetailTipos(),
        "/detailMovimentos": (context) => const DetailMovimentos(),
        "/detailItens": (context) => const DetailItens(),
         "/detailHabilidades": (context) => const DetailHabilidades(),
        "/habilidades": (context) => const Habilidades(),
        "/itens": (context) => const Itens(),
        "/movimentos": (context) => const Movimentos(),

      },
    );
  }
}