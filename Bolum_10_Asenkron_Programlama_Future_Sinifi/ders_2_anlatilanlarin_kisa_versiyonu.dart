main(List<String> args) {
  print("anne çocuğu ekmek almaya yollar");
  uzunSurenIslem()
      .then((value) => print(value))
      .catchError((hata) => print(hata))
      .whenComplete(() => print("operasyon tamamlandı"));
  print("peynir zeytin hazırlanır");
  print("kahvaltı hazır!");
}

Future<String> uzunSurenIslem() {
  print("cocuk ekmek almak için evden çıkar");
  // * sleep(Duration(seconds: 10));
  return Future<String>.delayed(Duration(seconds: 10), () {
    return "cocuk ekmekle eve girer";
  });
}
