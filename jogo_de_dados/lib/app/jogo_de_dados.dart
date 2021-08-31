import 'package:flutter/material.dart';
import 'dart:math';

class JogodeDados extends StatefulWidget {
  const JogodeDados({ Key? key }) : super(key: key);

  @override
  _JogodeDadosState createState() => _JogodeDadosState();
}

class _JogodeDadosState extends State<JogodeDados> {
  int NumDadoEsquerda = 1;
  int NumDadoDireita = 1;

  void MudarLadoDoDado(){
    setState((){
      NumDadoEsquerda = Random().nextInt(6) + 1;
      print('Número do dado da Esquerda = $NumDadoEsquerda');
      NumDadoDireita = Random().nextInt(6) + 1;
      print('Número do dado da Direita = $NumDadoDireita');
    });
  }

    @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/lado$NumDadoEsquerda.png'
              ),
              onPressed: (){
                MudarLadoDoDado();
              },
            )
          ),
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/lado$NumDadoDireita.png'
              ),
              onPressed: (){
                MudarLadoDoDado();
              },
            )
          )
        ]
      ),
    );
  }
}