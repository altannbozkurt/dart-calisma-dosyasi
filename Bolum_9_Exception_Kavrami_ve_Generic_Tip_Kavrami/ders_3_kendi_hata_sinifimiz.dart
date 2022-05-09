void main(List<String> args) {
  try {
    Ogrenci altan = Ogrenci(-5);
    print(altan.yas);
  } on AgeException catch (e) {
    print(e.mesaj);
  } finally {
    print("program bitti");
  }
}

class AgeException implements Exception {
  String mesaj;

  AgeException({this.mesaj = "AgeException"});

  @override
  String toString() {
    return "hatanın tostring metotu çalıştı";
  }
}

class Ogrenci {
  int yas = 0;

  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException(mesaj: "ageException - yaş negatif olamaz");
    } else {
      this.yas = yas;
    }
  }
}
