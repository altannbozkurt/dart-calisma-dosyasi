void main(List<String> args) {
  var bmw = Araba(2015, "BMW", true);
  bmw.bilgileriSoyle();
  bmw.yasHesapla();

  // * iki parametreli olarak tanımlayalım
  var citroen = Araba.markasizKurucuMethod(2018, true);
  citroen.bilgileriSoyle2();
}

class Araba {
  late int modelYili;
  late String marka;
  late bool otomatikMi;

  Araba(this.modelYili, this.marka, this.otomatikMi) {
    print("this anahtarlı kurucu method tetiklendi");
  }

  // * isimlendirilmiş kurucu method
  Araba.markasizKurucuMethod(this.modelYili, this.otomatikMi) {
    print("markasız kurucu method tetiklendi");
  }

  void bilgileriSoyle() {
    print(
        "arabanin modeil yili ${modelYili} markası : ${marka} otomatik mi: ${otomatikMi}");
  }

  void bilgileriSoyle2() {
    print("arabanin modeil yili ${modelYili} otomatik mi: ${otomatikMi}");
  }

  void yasHesapla() {
    if (modelYili != null) {
      print("arabanın yaşını hesapla ${2022 - modelYili}");
    } else {
      print("model yili hesaplanamadi");
    }
  }
}
