import 'package:flutter/material.dart';
import 'dart:math';

class Memory extends StatefulWidget {
  @override
  MemoryState createState() => MemoryState();
}

class MemoryState extends State<Memory> {
  List<int> listaNumeros = List.generate(16, (i) => i + 1);
  List<bool> listaVisivel = List.generate(16, (i) => true);
  int numeroSelecionado1 = -1;
  int numeroSelecionado2 = -1;
  int pontuacao = 0;

  void reiniciarJogo() {
    listaNumeros.shuffle();
    listaVisivel = List.generate(16, (i) => true);
    numeroSelecionado1 = -1;
    numeroSelecionado2 = -1;
    pontuacao = 0;
    setState(() {});
  }

  void verificarAcerto() {
    if (numeroSelecionado1 == numeroSelecionado2) {
      pontuacao++;
      listaVisivel[numeroSelecionado1] = false;
      listaVisivel[numeroSelecionado2] = false;
      numeroSelecionado1 = -1;
      numeroSelecionado2 = -1;
      if (pontuacao == 8) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Parabéns!'),
              content: Text('Você ganhou o jogo com $pontuacao pontos.'),
              actions: <Widget>[
                TextButton(
                  child: Text('Reiniciar'),
                  onPressed: () {
                    reiniciarJogo();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    } else {
      numeroSelecionado1 = -1;
      numeroSelecionado2 = -1;
    }
    setState(() {});
  }

  void selecionarNumero(int numero) {
    if (numeroSelecionado1 == -1) {
      numeroSelecionado1 = numero;
    } else if (numeroSelecionado2 == -1) {
      numeroSelecionado2 = numero;
      verificarAcerto();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jogo da Memória'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 4,
          children: List.generate(16, (index) {
            return Card(
              child: InkWell(
                onTap: () => selecionarNumero(listaNumeros[index]),
                child: Visibility(
                  visible: listaVisivel[index],
                  child: Center(
                    child: Text(listaNumeros[index].toString()),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
