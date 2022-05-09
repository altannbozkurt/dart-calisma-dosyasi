import 'dart:math';

void main(List<String> args) {
  try {
    double deger = kareKokunuAl(-25);
    print("deger : ${deger.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    print(e.message);
    print(e.source);
  } catch (e) {
    print(e);
  }
}

double kareKokunuAl(int i) {
  try {
    if (i < 0) {
      throw FormatException("Sayi negatif olamaz");
    } else {
      return sqrt(i);
    }
  } on FormatException catch (e) {
    print(e.message + " metot içindeyim");
    print(e.source);
  } finally {
    return 0;
  }
}
