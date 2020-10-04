import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_pokedex/pages/home_page/home_page.dart';
import 'package:flutter_pokedex/stores/pokeapi_store.dart';
import 'package:flutter_pokedex/stores/pokeapiv2_store.dart';

void main() {
  GetIt getIt = GetIt.instance;
  getIt.registerSingleton<PokeApiStore>(PokeApiStore());
  getIt.registerSingleton<PokeApiV2Store>(PokeApiV2Store());

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex - Youtube',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Google',
        brightness: Brightness.light,
      ),
      home: HomePage(),
    );
  }
}
