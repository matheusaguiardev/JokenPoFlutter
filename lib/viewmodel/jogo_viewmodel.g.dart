// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jogo_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$JogoViewModel on JogoViewModelBase, Store {
  final _$jogadaBotAtom = Atom(name: 'JogoViewModelBase.jogadaBot');

  @override
  String get jogadaBot {
    _$jogadaBotAtom.reportRead();
    return super.jogadaBot;
  }

  @override
  set jogadaBot(String value) {
    _$jogadaBotAtom.reportWrite(value, super.jogadaBot, () {
      super.jogadaBot = value;
    });
  }

  final _$jogadaPathAtom = Atom(name: 'JogoViewModelBase.jogadaPath');

  @override
  String get jogadaPath {
    _$jogadaPathAtom.reportRead();
    return super.jogadaPath;
  }

  @override
  set jogadaPath(String value) {
    _$jogadaPathAtom.reportWrite(value, super.jogadaPath, () {
      super.jogadaPath = value;
    });
  }

  final _$resultGameAtom = Atom(name: 'JogoViewModelBase.resultGame');

  @override
  String get resultGame {
    _$resultGameAtom.reportRead();
    return super.resultGame;
  }

  @override
  set resultGame(String value) {
    _$resultGameAtom.reportWrite(value, super.resultGame, () {
      super.resultGame = value;
    });
  }

  final _$JogoViewModelBaseActionController =
      ActionController(name: 'JogoViewModelBase');

  @override
  dynamic play(JokenponState playerPick) {
    final _$actionInfo = _$JogoViewModelBaseActionController.startAction(
        name: 'JogoViewModelBase.play');
    try {
      return super.play(playerPick);
    } finally {
      _$JogoViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
jogadaBot: ${jogadaBot},
jogadaPath: ${jogadaPath},
resultGame: ${resultGame}
    ''';
  }
}
