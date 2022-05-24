import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:unc_flutter_pokedex/models/poke_model.dart';

class PokeAPI {
  static Future<http.Response> getPokemon() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon?limit=250"));

  Future<Pokemon> getPokemonDetails(url) async {
    final Uri enderecoRequisicao = Uri.parse(url);
    final response = await http.get(enderecoRequisicao);
    var data = Pokemon.fromJson(jsonDecode(response.body));
    if (response.statusCode == 200) {
      return data;
    } else {
      throw Exception("Erro ao buscar dados!");
    }
  }
  //static Future<http.Response> getPokemonDetails(String pokemonName) =>
  //http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon/$pokemonName"));

}