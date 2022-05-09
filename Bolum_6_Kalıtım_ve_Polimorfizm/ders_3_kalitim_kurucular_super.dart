/*
 * Kalıtım özelliğini kullandığımızda kurucu method kullanımları anlatıldı
 * Bir sınıfı extend ettiğimizde alt sınıf nesnesi olusturulmadan önce üst sınıfın kurucusu çalısır.
 * super anahtar kelimesi ile üst sınıfın alanlarına erişip düzenleme yapabiliriz.
 */

void main(List<String> args) {
  Er hasan = Er("hasan", 25);
  // hasan.ad = "hasan";
  // hasan.yas = 20;
  hasan.memleketDegistir("adana");
  hasan.selamla();

  Asker altan = Asker("altan", 31);
}

class Asker {
  String ad;
  int yas;
  String memleket = "ankara";
  Asker(this.ad, this.yas) {
    print("asker sınıfının kurucusu çalıştı");
  }

  void selamla() {
    print("benim adım $ad ve yasım $yas");
  }
}

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas) {
    print("er sınıfının kurucusu çalıştı");
  }

  void memleketDegistir(String yeniMemleket) {
    super.memleket = yeniMemleket;
    print("$memleket");
  }

  @override
  void selamla() {
    print("er sınıfınıdan selamlar");
  }
}
