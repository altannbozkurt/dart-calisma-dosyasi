// * bir başka gösterim türü olan futurelardaki async await kavramını göreceğiz
// * istersek then_catchError whenComplate kullanabiliriz istersek async await
// * async await daha okunaklı kodlar yazmamızı sağlar

void main(List<String> args) async {
  print("internetten kişi verisi getirilecek");
  kisiyleIlgiliIslemler();
  print("başka işler yapılacak");

  print("işlem bitti");
}

void kisiyleIlgiliIslemler() async {
  String kisi = await kisiVerisiniGetir();
  print(kisi.length);
}

Future<String> kisiVerisiniGetir() {
  return Future<String>.delayed(Duration(seconds: 3), () {
    return "kisi adı : altan ve id:100";
  });
}
