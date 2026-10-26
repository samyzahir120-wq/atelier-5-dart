
import 'dart:io';

class NombreNegatifException implements Exception {
  final String message;

  NombreNegatifException(this.message);

  @override
  String toString() {
    return message;
  }
}

void main() {
  try {
    stdout.write("Entrez un nombre : ");
    int nombre = int.parse(stdin.readLineSync()!);

    if (nombre < 0) {
      throw NombreNegatifException("Le nombre est negatif");
    }

    int carre = nombre * nombre;
    print("Le carre est : $carre");

  } on NombreNegatifException catch (e) {
    print("Erreur : $e");

  } on FormatException catch (e) {
    print("Erreur : nombre invalide");

  } finally {
    print("Fin d'operation");
  }
}