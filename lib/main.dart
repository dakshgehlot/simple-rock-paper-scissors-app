import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/pages/game.dart';
import 'package:rock_paper_scissors/pages/welcome.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => const WelcomePage(),
      '/game' : (context) => const Game()
    },
  ));
}

