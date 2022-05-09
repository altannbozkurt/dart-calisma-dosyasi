/*
 * private değişken ve fonksiyonlar: Bir sınıftaki değişken ve metotları bazen erişime kapatmak isteyebiliriz. Bu durumlarda _ işareti ile bunları saklarız. 
 * 
 * getter metotlar: sınıf değişkenlerini okumak için kullanılan özel fonksiyonlardır.
 * Bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılmış değişkenlerin
 * gerekli olduğunda okunmasını sağlamaktır.
 * 
 * setter metotlar: sınıf değişkenlerine veri atamak için kullanılır. Bu metotların amacı özellikle private yani dış dünyanun erişimine kapatılan değişkenlere veri atamaktır, ayrıca veri ataması yapılırken gerekli olan kontrollerin ve işlemlerin yapılması için kullanılır.
 */

import 'ders_5_getter_setter_musteri.dart';
import 'ders_5_veritabani_islemleri.dart';

// * privite kullanmamızın amacı dışardan ulaşılamaması
// * eğer classimiz aynı dosya içinde olursa privete tanımlasak bile ulaşılabilir
// * o yüzden biz farkli bir dosya oluşturup adınıda veritabani_islemleri diye adlandırdık.
// * artık db. yazdığımızda sadece baglan methodu görünüyor.
void main(List<String> args) {
  var db2 = VeritabaniIslemler.loginWithNamedAndPassword("altan", "123");
  var db = VeritabaniIslemler();
  bool sonuc = db.baglan();
  if (sonuc) {
    print("bağlandin");
  } else
    print("bağlanamadın");

  var musteri = Musteri(100);
  musteri.bilgileriYazdir();

// * setter ile kullandığımız için içine direk bir değer atadık.
  musteri.musteriNoAta = 500;
  // musteri.bilgileriYazdir();

  //* getter kullanım ile yazdırdık
  print(musteri.musteriNoSoyle);
}
