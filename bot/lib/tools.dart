import 'dart:io';
import 'dart:math';

//Créez une fonction permettant de lancer les dés
int lancerDe(String nomjoueur) {
  var de1 = Random();
  var de2 = Random();
  var resultat = de1.nextInt(6) + 1 + de2.nextInt(6) + 1;
  print('$nomjoueur a lancé les dés et a obtenu la valeur $resultat');
  return resultat;
}

//NIVEAU 3 :
int choixForce() {
  print('Choix de force :-------------------------------------------\n');
  print('1. Force normal\n');
  print('2. Force doublée \n');
  print('3. Force divisée \n');
  print('-----------------------------------------------------------\n');
  print('Entrez votre choix (1, 2, 3):');
  var choix = int.parse(stdin.readLineSync());
  return choix;
}
