
import 'dart:io';

void main() {
  try {
    stdout.write("Entrez votre age : ");
    String ageTexte = stdin.readLineSync()!;

    int age = int.parse(ageTexte);

    print("Votre age est : $age");
  } on FormatException catch (e) {
    print("Erreur : format invalide");
  } finally {
    print("Fin d'operation");
  }
}