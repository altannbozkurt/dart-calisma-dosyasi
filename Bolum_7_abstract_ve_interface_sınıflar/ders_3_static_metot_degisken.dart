/*
* Sınıflarımızda nesne üretmeden bazı değişkenlere ve methodlara erişmek isteyebiliriz. burada karsımıza static kavramı cıkar.

* Static kullanarak nesne değil sınıf değişkenleri ve methodları olusturabilirz.
* Bir sınıfta tanımlanan method ve değişkenlere erişirken mutlaka nesne üretmemiz gerekirdi. Ama biz bunları static olarak tanımlarsak
* artık nesne üretmeden bu değerlere erişebilir ve kullanabiliriz. Artık onlar nesnelerin değil sınıfın method ve değişkenleridir.

* ayrıca statik degiskenler kullanılana kadar deger almazlar, bellekte yer ayrılmaz
* statik methodların içinde this anahtar kelimesi kullanılmaz.

* static metotlar içinden nesneye özgü alanlara erişilemezken, nesneye özgü metot içinden static değerlere erişilebilir.

* • Bir	değişkenin	veya	metodun,	bulunduğu	sınıftan	(	class )	nesne	oluşturmaya	gerek	kalmadan	erişilmek	istenirse	kullanılır
 */

void main(List<String> args) {
  Matematik m1 = Matematik(50, 20);
  m1.topla();
  m1.cikar();

  Matematik m2 = Matematik(30, 10);
  m2.topla();
  m2.cikar();

  print(Matematik.PI);
  Matematik.sinifAdiniSoyle();

  print("toplam ilem sayısı ${Matematik.toplamIslemSayisi}");
}

class Matematik {
  // * instance veriable
  // * yani bir nesne üretilecek ki bu nesneler oluşturulsun kullanılsın.
  int _birinciSayi = 0;
  int _ikinciSayi = 0;

  // * 3.
  static int toplamIslemSayisi = 0;

  // * class veriable, sınıf değişkeni
  static double PI = 3.14;
  static void sinifAdiniSoyle() {
    print("ben matematik sınıfıyım");
  }

  Matematik(this._birinciSayi, this._ikinciSayi);

  void topla() {
    sinifAdiniSoyle();
    toplamIslemSayisi++;
    print("toplam : ${_birinciSayi + _ikinciSayi}");
  }

  void cikar() {
    toplamIslemSayisi++;
    print("sonuc: ${_birinciSayi - _ikinciSayi}");
  }
}
