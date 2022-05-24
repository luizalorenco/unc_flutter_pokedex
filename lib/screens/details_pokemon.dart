import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/poke_model.dart';
import 'package:unc_flutter_pokedex/widgets/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets/detail_data.dart';
import 'package:unc_flutter_pokedex/widgets/detail_options_button.dart';
import 'package:unc_flutter_pokedex/widgets/detail_title.dart';
import 'package:unc_flutter_pokedex/widgets/detail_image.dart';

class DetailsPokemon extends StatefulWidget {
  final String? url;
  const DetailsPokemon({Key? key, this.url}) : super(key: key);

  @override
  State<DetailsPokemon> createState() => _DetailsPokemonState();
}

class _DetailsPokemonState extends State<DetailsPokemon> {
  Future<Pokemon>? pokemon;

  @override
  void initState() {
    super.initState();
    pokemon = PokeAPI().getPokemonDetails(widget.url);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Pokemon>(
        future: pokemon,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            if (snapshot.hasData) {
              final id = snapshot.data!.id;
              final name = snapshot.data!.name;
              return Scaffold(
                backgroundColor: Color.fromRGBO(228, 228, 228, 1),
                body: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                  ),
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      DetailTitle(
                          id: snapshot.data!.id, name: snapshot.data!.name),
                      DetailImage(
                          image:
                              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png"),
                      DetailData(
                        pokemon: snapshot.data!,
                      ),
                    ],
                  ),
                ),
                floatingActionButton: const DetailOptionsButton(),
                
              );
            }
            return Container();
          }
        });
  }
}