void main(List<String> args) async {
  print("program başladı");
  Future.delayed(Duration(seconds: 0), () {
    print("0 saniyelik işlem");
  });
  print("program bitti");

  Future<int> toplama = Future(() {
    int toplam = 0;
    for (int i = 0; i < 100000; i++) {
      toplam += i;
    }

    return toplam;
    //throw Exception("toplam hesaplanamadı");
  });

  // * toplama.then((value) => print(value)).catchError((hata) => print(hata));

  // * async await ile kullanacağız

  try {
    int forSonuc = await toplama;
    print("*** $forSonuc");
  } catch (e) {
    print(e);
  }

  var f2 =
      Future.value("altan"); // * geriye değer döndüren futureu temsil ediyor
  var f3 = Future.error(
      "hata ile biten future"); // * hata ile biten future temsim ediyor

  f3.catchError((hata) => print(hata));
}
