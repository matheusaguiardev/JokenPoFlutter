import 'dart:math';
import 'package:joken_po/model/game_played.dart';
import 'package:joken_po/model/jokenpo_enum.dart';
import 'package:mobx/mobx.dart';
part 'jogo_viewmodel.g.dart';

class JogoViewModel = JogoViewModelBase with _$JogoViewModel;

abstract class JogoViewModelBase with Store {
  @observable
  var jogadaBot = "Jogada do oponente";

  @observable
  var jogadaPath = "images/padrao.png";

  @observable
  var resultGame = "Faça sua jogada!";

  var playPossibilities = [
    JokenponState.papel,
    JokenponState.pedra,
    JokenponState.tesoura
  ];

  @action
  play(JokenponState playerPick) {
    Random random = Random();
    var playBot = playPossibilities[random.nextInt(3)];
    var result = _getGame(playBot);
    print("Bot jogou $jogadaBot");
    jogadaBot = result.text;
    jogadaPath = result.imagePath;

    resultGame = _playerIsWinner(playerPick, playBot);
  }

  GamePlayed _getGame(JokenponState game) {
    switch (game) {
      case JokenponState.tesoura:
        return GamePlayed(JokenponState.tesoura, "images/tesoura.png", "Tesoura");
      case JokenponState.papel:
        return GamePlayed(JokenponState.papel, "images/papel.png", "Papel");
      case JokenponState.pedra:
        return GamePlayed(JokenponState.pedra, "images/pedra.png", "Pedra");
      default:
        return GamePlayed(JokenponState.none, "images/padrao.png", "");
    }
  }

  String _playerIsWinner(JokenponState playerPick, JokenponState botPick) {
    if (playerPick == JokenponState.tesoura && botPick == JokenponState.papel ||
        playerPick == JokenponState.papel && botPick == JokenponState.pedra ||
        playerPick == JokenponState.pedra && botPick == JokenponState.tesoura) {
      return "Você ganhou!!";
    } else if (playerPick == botPick) {
      return "Rodada empatada!!";
    } else {
      return "Você Perdeu :(";
    }
  }
}
