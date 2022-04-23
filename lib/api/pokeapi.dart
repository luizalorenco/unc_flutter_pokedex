import 'dart:async';
import 'package:http/http.dart' as http;

class PokeAPI {
  static Future<http.Response> getPokemon() => 
  http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon?limit=250"));

  static Future<http.Response> getHabilidade() => 
  http.get(Uri.parse("https://pokeapi.co/api/v2/ability"));

  static Future<http.Response> getTipo() => 
  http.get(Uri.parse("https://pokeapi.co/api/v2/type"));

  static Future<http.Response> getMovimento() => 
  http.get(Uri.parse("https://pokeapi.co/api/v2/move"));

  static Future<http.Response> getItem() => 
  http.get(Uri.parse("https://pokeapi.co/api/v2/item"));
}