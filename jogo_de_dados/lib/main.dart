import 'package:flutter/material.dart';
import 'package:jogo_de_dados/app/jogo_de_dados.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jogo de dados',
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(
            child: Text(
              "Dados"
            ),
          ),
        ),
        body: JogodeDados(),
      )
    )
  );
}
