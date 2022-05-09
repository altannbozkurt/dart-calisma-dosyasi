import 'dart:io';
// * ALGORİTMA ÖRNEKLERİ - ALIŞTIRMA

// * Örnek 1: Birbirinden farklı olarak verilen iki adet sayıdan, büyük olanı bulup gösteren algoritma ve akış diyagramını tasarlayınız.
class BuyukolaniBul {
  void buyukolan() {
    int s1 = 30;
    int s2 = 20;

    if (s1 > s2) {
      print("büyük olan sayi $s1");
    } else {
      print("büyük olan sayi $s2");
    }
  }
}

// * Örnek 2: Girilen vize ve final notlarına göre öğrencinin dersten geçip geçmediğini bulan algoritma ve akış diyagramını tasarlayınız.(vize yüzde 40 - final yüzde 60 alınacak geçer not 50)
class Not {
  double notuBul(s1, s2) {
    double sonuc = (s1 * 0.4) + (s2 * 0.6);
    if (sonuc >= 50) {
      print("dersi geçtiniz");
    } else {
      print("dersten kaldınız");
    }

    return sonuc;
  }
}

// * Örnek 3: Verilen tamsayının sıfır, pozitif ya da negatif olup olmadığını bulan algoritma ve akış diyagramını tasarlayınız.
class PozitifNegatif {
  int degeribul(int s1) {
    if (s1 < 0) {
      print("sayi negatiftir");
    } else {
      print("sayi pozitiftir");
    }
    return s1;
  }
}

// * Örnek 4: Ekrana 10 defa programcının adını yazan algoritmayı yapınız”.
class AdiniYazdir {
  void adimiYazdiriyorum() {
    for (int i = 0; i < 10; i++) {
      print("${i + 1}. indekste adım altan bozkurt");
    }
  }
}

// * Örnek 5: 1’den 100’e kadar tek sayıları yazdıran algoritma ve akış diyagramını yapınız.
class TekSayilar {
  void birdenYuyeKadarTekSayilar() {
    for (var i = 0; i <= 100; i++) {
      if (i % 2 == 1) {
        print(i);
      }
    }
  }
}

// * Örnek 6: Klavyeden girilen fiyatı, KDV(%18) ekleyerek ekrana yazdırın.
class KdvHesap {
  void kdvHesapla() {
    print("fiyati giriniz.");
    int fiyat = int.parse(stdin.readLineSync()!);
    double sonuc = 0;

    sonuc = fiyat + (fiyat * 0.18);
    print(sonuc);
  }
}

// * Örnek 7: Beş sayının toplamını ve ortalamasını veren programa ait algoritmayı oluşturunuz.
class Ortalama {
  double ortalamaHesapla(int s1, int s2, int s3, int s4, int s5) {
    double sonuc = ((s1 + s2 + s3 + s4 + s5) / 5);
    return sonuc;
  }
}

// * Örnek 8: Klavyeden girilen sayı kadar (N) sayının faktoryelini alan programın akış şeması.
class Faktoriyel {
  void faktoriyelBul() {
    print("faktoriyel giriniz");
    int sayi = int.parse(stdin.readLineSync()!);
    int faktoriyel = 1;
    for (var i = 1; i <= sayi; i++) {
      faktoriyel = faktoriyel * i;
    }
    print(faktoriyel);
  }
}

// * Örnek 9: Klavyeden girilen Fahrenayt derecesini Cantigrad’a çeviren programın akış şemasını çizin. (formül t = (t -32) / 1.8 )
class Fahrenayt {
  void fahrenaytBul() {
    print("dereceyi giriniz");
    double sayi = double.parse(stdin.readLineSync()!);
    double sonuc = sayi = (sayi - 32) / 1.8;
    print(sonuc);
  }
}

// * Örnek 10: ax²+bx+c=0 şeklinde verilen 2. derece denklemin köklerini bulan programın akış diyagramını çizin.

// * Örnek  11: Bir ürünü alış fiyatı üzerinden klavyeden vergi oranı ve kar oranı eklenerek satış fiyatına hesaplayan programın algoritması nedir?
class SatisFiyati {
  void karHesapla() {
    double alisFiyati = 100;
    print("vergi orani giriniz");
    double vergiOrani = double.parse(stdin.readLineSync()!);
    print("kar orani giriniz");
    double karOrani = double.parse(stdin.readLineSync()!);
    double sonuc = 0;

    sonuc = alisFiyati +
        (alisFiyati * (vergiOrani / 100)) +
        (alisFiyati * (karOrani / 100));
    print(sonuc);
  }
}

// * Örnek  12: Üniversite bir dersin başarı notu bir vize bir final sınav notu ile hesaplanır . vize notunun kat sayısı %30 final notunun kat sayısı %70’dir. Bir öğrencinin sınavda almış olduğu bu notlar neticesinde ders ortalaması bulan programın algoritmasını ve akış şemasını çiziniz.
class UniNot {
  void notHesapla() {
    print("vize notunu gir");
    int vize = int.parse(stdin.readLineSync()!);
    print("final notunu gir");
    int finl = int.parse(stdin.readLineSync()!);
    double sonuc = (vize * 0.3) + (finl * 0.7);
    print(sonuc);

    if (sonuc >= 50) {
      print("dersi geçtiniz");
    } else {
      print("dersten kaldınız");
    }
  }
}

// * Örnek  13: Yükseklik ve taban uzunluğu klaveden girilen üçgenin alanını hesaplayan uygulamayı gerçekleştiriniz . (alan = taban uzunluğu * yükseklik / 2)
class UcgeninAlani {
  void alanHesapla() {
    print("yüksekliği giriniz");
    int yukseklik = int.parse(stdin.readLineSync()!);
    print("taban uzunluğu giriniz");
    int uzunluk = int.parse(stdin.readLineSync()!);
    double sonuc = (yukseklik * uzunluk) / 2;
    print(sonuc);
  }
}

// * Örnek  14: Bir iletkenin kutupları arasındaki gerilim (V) iletkenden geçen amper türünde akım (I) iletken üzerinde var olan direncin (R) çarpımına eşittir. V=I*R formülüyle gösterilir. Formülden faydalanarak kullanıcı tarafından girilen akım ve direnç değerlerine göre iletkenin kutupları arasındaki gerilimi hesaplayan programın algoritmasını oluşturunuz.
class Gerilim {
  void gerilimHesapla() {
    print("akımı giriniz");
    int akim = int.parse(stdin.readLineSync()!);
    print("direnç değerini giriniz");
    int direnc = int.parse(stdin.readLineSync()!);
    int sonuc = akim * direnc;
    print(sonuc);
  }
}

// * Örnek  15: Klavyeden girilen bir sayının pozitif ya da nagatif olduğunu ekrana yazdıran algoritmayı oluşturunuz.
class PozitifNegatifKlavye {
  void pozitifMiNegatifMi() {
    print("sayiyi giriniz");
    int sayi = int.parse(stdin.readLineSync()!);
    if (sayi > 0) {
      print("sayi pozitiftir");
    } else if (sayi < 0) {
      print("sayi negatiftir");
    } else {
      print("girilen değer 0'dır");
    }
  }
}

// * Örnek 16: Öğrencinin bir dersten aldığı not klavyeden girilerek başarı durumu ekrana geçti veya kaldı şeklinde yazan uygulamanın algoritmasını oluşturunuz .
class OgrenciNotu {
  void notuBul() {
    print("notu giriniz");
    int not = int.parse(stdin.readLineSync()!);

    if (not > 50) {
      print("dersi geçtiniz");
    } else {
      print("dersten kaldınız");
    }
  }
}

//* Örnek 17: Bir öğrencinin derslerinden 2 not ve 1 sözlü klavyeden girilerek başarı durumu ekrana “geçti” ve “kald”ı şeklinde yazan algoritmayı oluşturun.
class YaziliVeSozlu {
  void yaziliSozluNotu() {
    print("1. notu gir");
    int sinav1 = int.parse(stdin.readLineSync()!);
    print("2. notu gir");
    int sinav2 = int.parse(stdin.readLineSync()!);
    print("sözlü notunu gir");
    int sozlu = int.parse(stdin.readLineSync()!);
    double sonuc = (sinav1 + sinav2 + sozlu) / 3;

    if (sonuc > 50) {
      print("dersi geçti");
    } else {
      print("dersten kaldı");
    }
  }
}

// * Örnek 18: Kullanıcıdan alınan sayının tek ya da çift olduğunu  kontrol edip ekranda yazdıran algoritmayı oluşturun.
class TekMiCiftMi {
  void tekCift() {
    print("sayiyi giriniz");
    int sayi = int.parse(stdin.readLineSync()!);

    if (sayi % 2 == 0) {
      print("sayi çift sayidir");
    } else if (sayi % 2 == 1) {
      print("sayi tek sayidir");
    } else {
      print("geçerli bir değer giriniz");
    }
  }
}

// * Örnek 19: Üniversite için vize final notları yapılmaktadır. Bir öğrencinin dersten geçme şartı vizenin %30 ile final notunun %70 in toplamı 50 ve üzeri ve final notunun 50 ve daha yüksek olmasıdır. Buna uygun algoritmayı oluşturunuz.

// * Örnek 20: Kullanıcının klavyeden girdiği sayı 3’ e ve 5’ e tam bölünüyorsa ekrana tam bölünüyor yazan bölünmüyor sa bölünmüyor yazan algoritmayı oluşturun.
class TamBolunen {
  void uceVeBeseTamBolunen() {
    print("sayiyi giriniz:");
    int sayi = int.parse(stdin.readLineSync()!);

    if (sayi % 3 == 0 && sayi % 5 == 0) {
      print("sayi 3e ve 5e tam bölünüyor");
    } else {
      print("sayi 3e ve 5e tam bölünmüyor");
    }
  }
}

// * Örnek 21: Kullanıcının klavyeden girdiği sayı 0-100 aralığındaysa ekranda “geçerli” değilse “geçersiz” yazan algoritmayı oluşturun.
class SifirlaYuzArasi {
  void sifirlaYuzArasininBul() {
    print("sayiyi giriniz");
    int sayi = int.parse(stdin.readLineSync()!);

    if (sayi > 0 && sayi <= 100) {
      print("geçerli");
    } else {
      print("geçersiz");
    }
  }
}

// * Örnek 22: Öğrencinin sınavdan almış olduğu puana göre notunu ekrana yazdıran programın sahte kodlarını yazınız ?

// * Örnek 23: Suyun sıcaklık derecesine göre katı sıvı gaz halinde olduğu bulan ve ekrana yazan algoritma ?

class SicaklikDerecesi {
  void suyunSicaklikDerecesiniBul(int derece) {
    if (derece > 0 && derece < 100) {
      print("sıvı  haldedir");
    } else if (derece <= 0) {
      print("katı haldedir");
    } else {
      print("gaz haldedir");
    }
  }
}

// * Örnek 24: Kullanıcıdan ax2+bx+c=0 şeklindeki ikinci derecede denkleme ait a,b ve c değerleri istenerek deltayı hesaplayan ve gösteren çıkan delta sonucuna göre denklemin köklerinin yukardaki tabloya göre gösterilmesi sağlanan algoritma ?

// * Örnek 25: Klavyeden girilen 0 ile 99.999 arasındaki basamak sayısını ekrana yazdıran algoritma ?
class Basamak {
  void basamakBul() {
    print("sayiyi giriniz");
    int sayi = int.parse(stdin.readLineSync()!);

    if (sayi > 0 && sayi < 10) {
      print("birler basamağı");
    } else if (sayi >= 10 && sayi < 100) {
      print("onlar basamağı");
    } else if (sayi >= 100 && sayi < 1000) {
      print("yüzler basamağı");
    } else if (sayi >= 1000 && sayi < 10000) {
      print("binler basamağı");
    } else if (sayi >= 10000 && sayi < 100000) {
      print("onbinler basamağı");
    } else {
      print("lütfen geçerli bir değer giriniz");
    }
  }
}

// * Örnek 26: Bir fabrikada sabit maaşla çalışan işçiler aile durumlarına göre ek maaş almaktadırlr. Çocuk sayısı 1 ise maaşının %5’i kadar , çocuk sayısı 2 ise %10’u 3 ve daha fazla ise %15’i kadar aile yardımı almaktadır. Buna göre kullanıcıdan işçinin maaşı ve çocuk sayısı istenerek gerekli hesaplamayı yapan algoritma ?
class Isci {
  void maasHesapla() {
    print("işçinin maaşı:");
    int maas = int.parse(stdin.readLineSync()!);
    print("cocuk sayisi:");
    int cocukSayiyi = int.parse(stdin.readLineSync()!);
    double sonuc = 0;

    if (cocukSayiyi == 1) {
      sonuc = maas + (maas * 0.05);
      print(sonuc);
    } else if (cocukSayiyi == 2) {
      sonuc = maas + (maas * 0.1);
      print(sonuc);
    } else if (cocukSayiyi >= 3) {
      sonuc = maas + (maas * 0.15);
      print(sonuc);
    } else {
      print("geçerli bir değer giriniz");
    }
  }
}

// * Örnek 27:  Bir fabrikada işçinin alacağı ücret hesaplanırken şu kraterlere uyulmaktadır ; Eğer işçi 40 saatten az çalışmışsa çalıştığı saat ve saat ücreti çarpılarak alacağı ücret hesaplanıyor , eğer işçi 40 saat ve daha fazla çalışmışsa çalıştığı saat 2 saat olarak hesaplanacak buna göre bilgileri alınarak ödenecek tutarı yazdıran algoritması.
class FabrikadaIsci {
  void ucretHesapla(int saat, int saatlikUcret) {
    if (saat <= 40) {
      print(
          "$saat çalışan işçinin saatlik ücreti $saatlikUcret TL ise maaşı ${saat * saatlikUcret}");
    } else if (saat > 40) {
      print(
          "$saat çalışan işçinin saatlik ücreti ${saatlikUcret * 2} TL ise maaşı ${saat * (saatlikUcret * 2)}");
    } else {
      print("geçerli bir değer giriniz");
    }
  }
}

// * Örnek 28: 2.Dereceden Denkelem köklerini bulan programa ait akış şeması örneği.

// * Örnek 29: Bir ücretlinin sicil numarası, çalışma saati ve saat ücreti bilgisayara giriş olarak veriliyor.Ücretlinin bu bilgilerle maaşını hesaplayan algoritmayı ve akış şemasını çiziniz.
class SicilNumaraliIsci {
  late int sicilNo;
  late int calismaSaati;
  late int saatlikUcret;

  void bilgileriYazdir() {
    print(
        "$sicilNo sicil numaralı işçinin çalışma saati $calismaSaati ve ücreti $saatlikUcret'tir maaşıda ${calismaSaati * saatlikUcret} TL dir ");
  }
}

// * Örnek 30:  İki sayının farkını bulan algoritmayı yapınız.
class SayilarinFarki {
  void sayilarinFarkiniBul(int s1, int s2) {
    print("$s1 - $s2 = ${s1 - s2}");
  }
}

// * Örnek 31: Klavyeden girilen N sayısına göre 1 den N ye kadar olan tek sayıların toplamı ve çarpımı çift sayıların ise karelerinin toplamını bulan programın algoritması
class SayilariTopla {
  void toplamiBul() {
    print("sayiyi giriniz:");
    int sayi5 = int.parse(stdin.readLineSync()!);
    int toplam = 0;
    int carpim = 1;
    int kareToplam = 0;
    for (int i = 1; i <= sayi5; i++) {
      if (i % 2 == 1) {
        toplam = toplam + i;
        carpim = carpim * i;
      } else {
        kareToplam = kareToplam + (i * i);
      }
    }
    print(toplam);
    print(carpim);
    print(kareToplam);
  }
}

// * Örnek 32: Klavyeden girilen 10 sayıyı toplayan ve sonucu ekranda gösteren programın algoritmasını yazınız.
class OnSayi {
  void onSayiyiTopla() {
    print("kaç adet girilecek");
    int adet = int.parse(stdin.readLineSync()!);
    int toplam = 0;

    for (int i = 0; i < adet; i++) {
      int sayi = int.parse(stdin.readLineSync()!);
      toplam = toplam + sayi;
    }
    print(toplam);
  }
}

// * Örnek 33: Klavyeden girilen a ve b sayıları arasındaki sayıları listeleyen Akış Şeması Örneği:
class FarkiBulalim {
  void farkiBul() {
    print("birinci sayiyi giriniz");
    int sayi1 = int.parse(stdin.readLineSync()!);
    print("ikinci sayiyi giriniz");
    int sayi2 = int.parse(stdin.readLineSync()!);
    for (int i = sayi1; i < sayi2; i++) {
      print(i);
    }
  }
}

// * Örnek 34: Klavyeden 2 sayı girilecek daha sonra işlem numarası girilecek girilen işlem numarasına gööre işlem yapılacak sonuç ekranda görüntelenecek algoritma akış diyagramı
class Islem {
  void islemiBul() {
    int sayi1 = int.parse(stdin.readLineSync()!);
    int sayi2 = int.parse(stdin.readLineSync()!);
    int islemNo = int.parse(stdin.readLineSync()!);

    if (islemNo == 1) {
      print(sayi1 + sayi2);
    } else if (islemNo == 2) {
      print(sayi1 - sayi2);
    } else if (islemNo == 3) {
      print(sayi1 * sayi2);
    } else if (islemNo == 4) {
      print(sayi1 / sayi2);
    } else {
      print("geçerli bir değer giriniz");
    }
  }
}

// * Örnek 35: Klavyeden girilen 3 basamaklı sayının 1. 2. ve 3. basamağını (Basamak Değerlerini) yazdıran programın algoritması.
class BasamakAyir {
  void basamaklarinaAyir() {
    int yuzler, onlar, birler;
    print("sayiyi giriniz");
    int sayi = int.parse(stdin.readLineSync()!);

    yuzler = (sayi / 100).toInt();
    sayi = sayi - (yuzler * 100);
    onlar = (sayi / 10).toInt();
    sayi = sayi - (onlar * 10);
    birler = sayi;

    print("yüzler basamağı $yuzler");
    print("onlar basamağı $onlar");
    print("birler basağmaı $birler");
  }
}

// * Örnek 36:  Ekrana 10 defa Adını yazdıran Akış Şeması

// * Örnek 37: Bir dersten 3 sınav notu alan bir öğrencinin : a- ortalamasını, b-5 li sistemdeki not karşılığını, c-harfli sistemdeki not karşılığını yazdıran programın algoritmasını ve akış diyagramını tasarlayınız.

// * Örnek 38: Bir fabrikada sabit maaşla çalışan işçiler aile durumlarına ve ürettikleri parça sayısına göre de ek maaş almaktadır. Aşağıda verilen yönergelere göre işçilerin maaşlarını hesaplayan programın algoritmasını ve akış diyagramını tasarlayınız.

// * Örnek 39:  Klavyeden 3 adet kenar uzunluğu giriliyor. Girilen kenar uzunlukları ile : a-Üçgenin çizilip çizilemeyeceğini, b-Eğer üçgen çizilirse Üçgenin çeşidini(ikizkenar, çeşitkenar, eşkenar), c- çizilen üçgenin alan ve çevresini bulup ekrana yazan programın algoritmasını ve akış diyagramını tasarlayınız.

// * Örnek 40: Girilen 10 adet sayi içerisinden pozitiflerin ve negatiflerin ve “0”  sayısını ayrı ayrı bulan akış şeması.

// * Örnek 41: Kürenin alanını ve hacmini hesaplayan algoritma ve akış şeması örneği.

// * Örnek 42: Silindirin Alanı ve Hacmini hesaplayan algoritma ve akış şeması örneği

// * Örnek 43: Girilen 3 sayıdan en büyüğünü bulan algoritma örneği

// * Örnek 44: 7-24 arası tek sayıların toplamını ve ortalamasını bulan algoritma

// * Örnek 45: Klavyeden Girilen 3 sayının ortalamasını alan algoritma

// * Örnek 46: Klavyeden girirlen 5 adet sayının ortalamasının döngü mantnığı ile bulup ekrana yazdıran akış diyagramını oluşturunuz.

// * Örnek 47: 1 ile 40 arasında bulunan 5 in katı olan sayıları ekrana yazan akış şeması.

// * Örnek 48: Çarpma kullanmadan klavyeden girilen sayının 3 katını bulan akış diyagramı.

// * Örnek 49: Taban uzunluğu ve yüksekliği girilen paralelkenarın alanını hesaplayan algoritma.

// * Örnek 50:  Arka arkaya girilen rastgele 10 tamsayının ortalaması ile bu sayılardan en büyük ve en küçük olanının ortalamasını bularak elde edilen bu iki ortalamanın farkını alan algoritma örneği.

void main(List<String> args) {
  // * örnek - 1
  var buyukSayiyiBul = BuyukolaniBul();
  buyukSayiyiBul.buyukolan();

  // * örnek - 2
  var notuYazdir = Not();
  notuYazdir.notuBul(40, 70);

  // * örnek - 3
  var pozitifMiNegatifMiBul = PozitifNegatif();
  pozitifMiNegatifMiBul.degeribul(-1);

  // * örnek - 4
  var onkereAdimiYazdir = AdiniYazdir();
  onkereAdimiYazdir.adimiYazdiriyorum();

  // * örnek - 5
  var tekSayilariYazdir = TekSayilar();
  tekSayilariYazdir.birdenYuyeKadarTekSayilar();

  // * örnek - 6
  var fiyatiBul = KdvHesap();
  fiyatiBul.kdvHesapla();

  // * örnek - 7
  var ortalama = Ortalama();
  double sonuc = ortalama.ortalamaHesapla(10, 10, 10, 10, 10);
  print(sonuc);

  // * örnek - 8
  var faktoriyel = Faktoriyel();
  faktoriyel.faktoriyelBul();

  // * örnek - 9
  var fahrenheit = Fahrenayt();
  fahrenheit.fahrenaytBul();

  // * örnek - 10

  // * örnek - 11
  var satisFiyati = SatisFiyati();
  satisFiyati.karHesapla();

  // * örnek - 12
  var uniNot = UniNot();
  uniNot.notHesapla();

  // * örnek - 13
  var ucgeninAlani = UcgeninAlani();
  ucgeninAlani.alanHesapla();

  // * örnek - 14
  var gerilim = Gerilim();
  gerilim.gerilimHesapla();

  // * örnek - 15
  var pozitifNegatif = PozitifNegatifKlavye();
  pozitifNegatif.pozitifMiNegatifMi();

  // * örnek - 17
  var notuBul = OgrenciNotu();
  notuBul.notuBul();

  // * örnek - 17
  var sozluYaziliNotu = YaziliVeSozlu();
  sozluYaziliNotu.yaziliSozluNotu();

  // * örnek - 18
  var tekCift = TekMiCiftMi();
  tekCift.tekCift();

  // * örnek - 19

  // * örnek - 20
  var tamBolunen = TamBolunen();
  tamBolunen.uceVeBeseTamBolunen();

  // * örnek - 21
  var sifirlaYuz = SifirlaYuzArasi();
  sifirlaYuz.sifirlaYuzArasininBul();

  // * örnek - 23
  var dereceyeGore = SicaklikDerecesi();
  dereceyeGore.suyunSicaklikDerecesiniBul(100);

  // * örnek - 25
  var basamak = Basamak();
  basamak.basamakBul();

  // * örnek - 26
  var isci = Isci();
  isci.maasHesapla();

  // * örnek - 27
  var fabrikadaIsci = FabrikadaIsci();
  fabrikadaIsci.ucretHesapla(35, 20);

  // * örnek - 28
  var sicilNoluIsci = SicilNumaraliIsci();
  sicilNoluIsci.calismaSaati = 40;
  sicilNoluIsci.saatlikUcret = 20;
  sicilNoluIsci.sicilNo = 123456;

  sicilNoluIsci.bilgileriYazdir();

  // * örnek - 30
  var fark = SayilarinFarki();
  fark.sayilarinFarkiniBul(30, 20);

  // * örnek - 31
  var sayilariTopla = SayilariTopla();
  sayilariTopla.toplamiBul();

  // * örnek - 32
  var onSayi = OnSayi();
  onSayi.onSayiyiTopla();

  // * örnek - 33
  var farkiBulalim = FarkiBulalim();
  farkiBulalim.farkiBul();

  // * örnek - 34
  var islem = Islem();
  islem.islemiBul();

  // * örnek - 35
  var basamakAyir = BasamakAyir();
  basamakAyir.basamaklarinaAyir();
}
