import 'dart:io';

// * olasi bi string değer göndericek.
main(List<String> args) {
  print("anne çocuğu ekmek almaya yollar");
  print("cocuk ekmek almak için evden çıkar");
  Future<String> sonuc = uzunSurenIslem();
  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  });
  print("peynir zeytin hazırlanır");
  print("kahvaltı hazır!");

  print("anne çocuğu ekmek almaya yollar 2");
  print("cocuk ekmek almak için evden çıkar 2");
  Future<String> sonuc2 = uzunSurenIslem2();
  sonuc2.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("ekmek alma operasyonu bitti"));
  print("peynir zeytin hazırlanır 2");
  print("kahvaltı hazır! 2");
}

Future<String> uzunSurenIslem() {
  // * future.delayed basına return koyabilirdik.
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    return "cocuk ekmekle eve girer";
  });

  return sonuc;
}

// * hatalı sonucu görmek için yaptık
Future<String> uzunSurenIslem2() {
  // * future.delayed basına return koyabilirdik.
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    throw Exception("bakkalada ekmek kalmamış");
  });

  return sonuc;
}
