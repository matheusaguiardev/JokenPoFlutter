import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:joken_po/model/jokenpo_enum.dart';
import 'package:joken_po/viewmodel/jogo_viewmodel.dart';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  JogoViewModel viewModel = JogoViewModel();

  @override
  Widget build(BuildContext context) {
    print("A tela foi construida");

    return Scaffold(
      appBar: AppBar(title: const Text("JokenPô")),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Observer(builder: (_) {
                    return Text(viewModel.jogadaBot);
                  }))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Observer(
                    builder: (_) {
                      return Image.asset(
                        viewModel.jogadaPath,
                        fit: BoxFit.fill,
                        width: 80.0,
                        height: 80.0,
                      );
                    },
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                  child: const Text("Faça a sua escolha")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  print("Usuário jogou papel");
                   viewModel.play(JokenponState.papel);
                },
                child: Image.asset(
                  "images/papel.png",
                  height: 80.0,
                  width: 80.0,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Usuário jogou pedra");
                  viewModel.play(JokenponState.pedra);
                },
                child:
                    Image.asset("images/pedra.png", height: 80.0, width: 80.0),
              ),
              GestureDetector(
                onTap: () {
                  print("Usuário jogou tesoura");
                  viewModel.play(JokenponState.tesoura);
                },
                child: Image.asset("images/tesoura.png",
                    height: 80.0, width: 80.0),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Observer(builder: (_) {
                  return Text(viewModel.resultGame);
                })),
          ])
        ],
      ),
    );
  }
}
