import 'dart:io';

// * single thread nedir öğren
// * event loop nedir öğren
main(List<String> args) {
  print("anne çocuğu ekmek almaya yollar");
  uzunSurenIslem();
  print("peynir zeytin hazırlanır");
  print("kahvaltı hazır!");
}

void uzunSurenIslem() {
  print("cocuk ekmek almak için evden çıkar");
  // * sleep(Duration(seconds: 10));
  Future.delayed(Duration(seconds: 10), () {
    print("cocuk ekmekle eve girer");
  });
}
