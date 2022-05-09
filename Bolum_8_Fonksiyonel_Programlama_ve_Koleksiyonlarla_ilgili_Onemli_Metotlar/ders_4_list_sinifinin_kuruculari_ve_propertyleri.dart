void main(List<String> args) {
  Person altan = Person(3, "altan");
  Ogrenci hasan = Ogrenci(1, "hasan", 10);
  Person begum = Ogrenci(8, "begüm", 8);
  var berfin = Person(6, "berfin");
  var korcan = Ogrenci(7, "korcan", 4);

  List<Person> tumOgrenciler = [altan, hasan, begum, berfin, korcan];

  var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0));
  // * listfrom ve list of benzer yapılar birinde ogrencileri tut diyebiliyoruz <> içinde diğerinde diyemiyoruz. list of daha güvenli
  var listeFrom = List<Ogrenci>.from(tumOgrenciler.whereType<Ogrenci>());
  var listeOf = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>());
  var listGenerate = List<int>.generate(5, (index) => index + 2);
  var listGenerateOgrenci =
      List<Ogrenci>.generate(5, (index) => Ogrenci(index, "$index", index * 2));

// * eleman ekleyip çıkaramıyoruz
  var degistirilemezListe = List.unmodifiable([0, 1, 2]);

  print(listeFrom);
  print(listeOf);
  print(listGenerate);
  print(listGenerateOgrenci);
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim);
  @override
  String toString() {
    return "id: $id ve isim $isim";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, alinanDersSayisi) : super(id, isim);
  @override
  String toString() {
    return "id: $id ve isim: $isim ve alinan ders sayisi: $alinanDersSayisi";
  }
}
