// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class resultado extends StatefulWidget {
  String valor;
  resultado(this.valor, {Key? key}) : super(key: key);

  @override
  _resultadoState createState() => _resultadoState();
}

class _resultadoState extends State<resultado> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem;

    if (widget.valor == "cara") {
      caminhoImagem = "images/moeda_cara.png";
    } else {
      caminhoImagem = "images/moeda_coroa.png";
    }
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(caminhoImagem),
          GestureDetector(
            child: Image.asset("images/botao_voltar.png"),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
