import 'dart:io';

import 'package:bot/classe_bot.dart';
import 'package:bot/classes_player.dart';
import 'dart:math';

import 'package:bot/tools.dart';

void main(List<String> arguments) {
  //2 - Créez un objet Bot sur lequel vous allez vous défouler
  //Objet avec force =1 et Sante=100
  final bot = Bot(force: 1, sante: 100);

  //NIVEAU 1: Créez un objet Player qui représentera le joueur en cours
  final player = Players(force: 1, sante: 100);

  //var arme = Armes(nom: 'Missile', puissance: 1, precision: 100);
  print('Donnez votre pseudo');
  var nomUtilisateur = stdin.readLineSync();
  player.pseudo = nomUtilisateur;
  var choix = choixForce();
  //Compteur de tour
  var compteurTour = 0;

  do {
    //Lancé de Dé
    var tour = Random().nextBool();

    if (tour) {
      player.attaqueBot(bot, choix);
    } else {
      bot.attaquePlayer(player);
    }

    //Afficher les infos bot et player
    player.affichePlayer();
    bot.afficheBot();

    compteurTour++;
    print('Fin du tour $compteurTour');
  } while (bot.sante > 0 && player.sante > 0);
  if (bot.sante < 0 && player.sante > 0) {
    print('Le bot est vaincu!');
    player.victore();
  } else if (player.sante < 0 && bot.sante > 0) {
    print('Vous avez perdu la partie!');
  }
}
