void main(List<String> args) {
  var ogrenci = Ogrenci(10, "altan");
  var ogrenci2 = Ogrenci.idSiz("begüm");
  var ogrenci3 = Ogrenci.factoryKurucusu(-5, "berfin");

  print(ogrenci3.id);
  print(ogrenci3.isim);
}

class Ogrenci {
  late int id;
  late String isim;

// * print kullanabiliyoruz am return ifadesi kullanamıyoruz
// * kurucular çalıştığında her ne kadar return ifadesi kullanamasakta yukarıya atadığımızda değeri return ediyor ki alıp onu begüme koyabiliyoruz atayabiliyoruz.
// * bunlar özel fonksiyonlar arka planda return yapıyor
  Ogrenci(this.id, this.isim) {
    print("varsayilan kurucu çalıştı");
  }

  Ogrenci.idSiz(this.isim) {
    print("isimlendirilmiş kurucu çalıştı");
  }

  //* factory sayesinde nesneler üretebiliyoruz
  // * farkı olarakta return ifadesini kullanabiliyoruz
  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else
      return Ogrenci(id, isim);
  }
}
