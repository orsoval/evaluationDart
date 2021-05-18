import 'dart:io';
import 'package:bot/classe_arme.dart';
import 'package:bot/classe_bot.dart';
import 'package:bot/tools.dart';
//NIVEAU 1 : Créez un nouveau type "Player"

class Players {
  String pseudo;
  int force;
  int sante;
  var arme = Armes(nom: 'Missile', puissance: 1, precision: 100);

  Players({this.pseudo, this.force, this.sante});

//NIVEAU 2 :Déplacer les fonctions d’affichage
  //Une procédure (ou fonction) permettant d’afficher les infos essentielles d’un Player
  void affichePlayer() {
    print('$pseudo - Force : $force - Santé : $sante%');
  }

  //Une procédure (fonction) d’attaque du Player vers le Bot, qui reçoit le bot en paramètres et lance l’attaque entre eux

  void attaqueBot(Bot bot, chxF) {
    print('Appuyez sur Entrer pour lancer le Dee');
    stdin.readLineSync();
    final valeurDes = lancerDe(pseudo);

    switch (chxF) {
      case 1:
        bot.sante = bot.sante - 1 * force * valeurDes;
        break;
      case 2:
        bot.sante = bot.sante - 2 * force * valeurDes;
        break;
      case 3:
        bot.sante = bot.sante - 0.5 * force * valeurDes;
        break;
      default:
        print('Vous n\'avez fait aucun choix');
    }
  }

  void victore() {
    print('$pseudo, vous avez gagné !!!!!');
  }
}
