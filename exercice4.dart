
class MotdepasseCourtException implements Exception {
  String message;

  MotdepasseCourtException(this.message);

  @override
  String toString() {
    return message;
  }
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException("Mot de passe trop court");
  }
}

void main() {
  try {
    String motdepasse = "abcdef";

    verifierMotdepasse(motdepasse);

    print("Mot de passe valide");
  } on MotdepasseCourtException catch (e) {
    print("Erreur : $e");
  }
}