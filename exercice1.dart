void main() {
  try {
    int a = 12;
    int b =0;

    int resultat = a ~/ b;
    print("Resultat : $resultat");
  } catch (e) {
    print("Division impossible");
  }
}