
void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw Exception("Mot de passe trop court");
  }
}

void main() {
  try {
    String motdepasse = "abcdef";

    verifierMotdepasse(motdepasse);

    print("Mot de passe valide");
  } catch (e) {
    print("Erreur : $e");
  }
}