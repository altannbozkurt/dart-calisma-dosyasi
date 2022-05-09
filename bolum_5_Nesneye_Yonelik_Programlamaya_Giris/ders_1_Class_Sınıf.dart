// todo : Nesneye yönelimli programlamaya giriş
/*
 * Hayatlarımız nesneler çevresinde kuruludur.
 * 
 * Bu nesneleri soyutlayarak yazılım projelerine yansıtırız.
 * 
 * birden çok kez kullanım için nesneler soyutlanarak bilgisayar koduna dönüştürülür.
 * 
 * Oluşan soyut taslaklara sınıf(class) denir.
 * 
 * Sınıf	(	Class	)	Nedir	?
 * 
 * Sınıf : Kendi veri türlerimiz veya soyut olan taslaklara denir. Kendi içinde değişkenlere ve methodlara sahiptir
 * Istedigimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır.
 * 
 * Araba Analojisi
 *  Mühendisler yeni bir araba üretmek için öncelikle proje planları oluşturur.
 *  Benzin emisyonu, motorun nasıl çalıştığı gibi ayrıntılar bu planlara yansıtılır.
 *  Planlar arabanın nasıl hareket edeceği, arabayı oluşturacak parçalar gibi birçok detayı içerir.
 * Herhangi bir sürücünün tüm bu detayları bilmesine gerek var mıdır?
 * Hayır! Yalnızca ehliyetinin olması ve arabayı sürmeyi bilmesi yeterlidir.
 * 
 * Nesne	(	Object	)	Nedir	?
 * 
 * Nesne : Olusturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
 * Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz.
 * 
 * Nesneler sınıfların somutlaşmış halleridir.
 * Nesneleri durumu (state) ve davranış biçimleri vardır (behaviour)
 * 
 * Sınıflar ise nesnelerin özellikleri ve davranışları ile ilgili ayrıntıları içerir.
 * 
 * örneklendirelim
 * 
 * arabanın 
 * - renk
 * - hız
 * - kapasite
 * 
 *  durumudur(state)
 * 
 * -hızlanmak ve yavaşlamak için pedaller ise 
 * 
 *  davranışıdır(behaviour)
 * 
 * Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır.
 * 
 * Nesnenin	Durumu	ve	Davranışı	
 * 
 * Durum(State) : Sınıfların bir - birçok özelliği olabilir
 * - Somut değişkenler(instance veriable) belirler
 * - Nesneyle birlikte taşınır
 * 
 * Davranış(Behaviour) : Sınıflar bir yada birden çok metoda sahip olabilir.
 * - Metod program içindeki bir işi temsil eder
 *  - Görevlerin gerçekletirileceği adımları tanımlar
 *  - Kullanıcıdan kompleks işlemleri gizler
 *  - Metodu çağırmak, metodun bu işlemleri gerçekleştirmesini sağlar
 * 
 */

void main(List<String> args) {
  Ogrenci altan = Ogrenci();
  altan.ogrNo = 405;
  print(altan.ogrNo);
  altan.bilgileriYazdir();

  altan.ogrAd = "altan";
  print(altan.ogrAd);

  altan.ogrSoyad = "bozkurt";
  print(altan.ogrSoyad);

  altan.mezunMu = true;
  print(altan.mezunMu);
}

// * bir sınıf oluşturalım. Sınıfın ismi öğrenci olsun. İçinde öğrenci ile ilgili bilgiler barındıralım.
class Ogrenci {
  // * burdaki değişkenlere instance veriable denir
  late int ogrNo;
  late String ogrAd;
  late String ogrSoyad;
  late bool mezunMu;

  void dersCalis() {
    print("ogrenci ders çalışıyor");
  }

  void bilgileriYazdir() {
    print(ogrNo);
  }
}
