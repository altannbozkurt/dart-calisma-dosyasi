void main(List<String> args) {
  var altan = Kisi("altan", 31);
  Calisan isci = Calisan("korcan", 26, 3000);
  isci.kendiniTanit();
}

class Kisi {
  String isim;
  int yas;

  Kisi(this.isim, this.yas) {}
  void kendiniTanit() {
    print("benim adım $isim ve yaşim $yas");
  }
}

class Calisan extends Kisi {
  int maas;
  Calisan(String name, int age, this.maas) : super(name, age) {}
  @override
  void kendiniTanit() {
    // super.kendiniTanit();
    print("ben çalışanım adım $isim ve yaşim $yas ve maaşım $maas");
  }
}
