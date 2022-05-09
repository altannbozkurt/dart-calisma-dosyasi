void main(List<String> args) {
  Person altan = Person(3, "altan");
  Ogrenci hasan = Ogrenci(1, "hasan", 10);
  Person begum = Ogrenci(8, "begüm", 8);
  var berfin = Person(6, "berfin");
  var korcan = Ogrenci(7, "korcan", 4);

  List<Person> tumOgrenciler = [altan, hasan, begum, berfin, korcan];

  tumOgrenciler.sort((Person ogr1, Person ogr2) {
    if (ogr1.id < ogr2.id) {
      return -1;
    } else if (ogr1.id > ogr2.id) {
      return 1;
    } else {
      return 0;
    }
  });

  print(tumOgrenciler);

// * map yapısını var olan listeyi bambaşka bir yapıya dönüştürmek için kullanıyoruz. to list ile iterable i listeye döndürdük.
// * toset kullanırsakta tekrar eden elemanları görmüyoruz.
  var mapIterable = tumOgrenciler.map((Person e) => "${e.isim}").toList();
  print(mapIterable);

  tumOgrenciler.add(altan);
  tumOgrenciler.addAll([begum, hasan]);

  print(tumOgrenciler);

  // * any metoduyla bir koşula bağlı olarak idsi 10dan küçük eleman var mı diye baktık ve true false yani boolen olarak değeri döndürdük
  bool sonuc = tumOgrenciler.any((Person element) => element.id < 10);
  print(sonuc);

  print("*************************");
  // * listemizi mape dönüştürdük
  Map<int, Person> yeniMap = tumOgrenciler.asMap();
  print(yeniMap);
  print(yeniMap[0]);

  bool sonucEvery = tumOgrenciler.every((element) => element.isim.length > 0);
  print(sonucEvery);

  var bulunan = tumOgrenciler.firstWhere((element) => element.id == 1);
  print(bulunan);
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim);
  @override
  String toString() {
    return "id: $id ve isim $isim\n";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, alinanDersSayisi) : super(id, isim);
  @override
  String toString() {
    return "id: $id ve isim: $isim ve alinan ders sayisi: $alinanDersSayisi\n";
  }
}
