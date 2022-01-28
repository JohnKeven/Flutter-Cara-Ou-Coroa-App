// ignore_for_file: camel_case_types

import 'dart:math';
import 'package:caraoucoroa/resultado.dart';
import 'package:flutter/material.dart';

class jogar extends StatefulWidget {
  @override
  _jogarState createState() => _jogarState();
}

class _jogarState extends State<jogar> {
  void _exibirResultado() {
    var itens = ["cara", "coroa"];
    int numero = Random().nextInt(2);
    var result = itens[numero];

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => resultado(result)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("images/logo.png"),
          GestureDetector(
            child: Image.asset("images/botao_jogar.png"),
            onTap: _exibirResultado,
          )
        ],
      ),
    );
  }
}
