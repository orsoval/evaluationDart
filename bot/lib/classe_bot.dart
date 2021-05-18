import 'package:bot/tools.dart';
import 'package:bot/classes_player.dart';

class Bot {
  double sante;
  int force;
  Bot({this.force, this.sante});

  //Une procédure (fonction) permettant d’afficher les infos essentielles d’un Bot
  void afficheBot() {
    print('Bot - Force : $force - Santé : $sante%');
  }

  //Une procédure d’attaque du Bot vers le Player, qui reçoit le player en paramètre et lance l’attaque entre eux.
  void attaquePlayer(Players player) {
    final valeurDes = force * lancerDe('Le bot');
    player.sante = player.sante - valeurDes;
  }
}
