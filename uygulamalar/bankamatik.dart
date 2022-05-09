// * bakiye
// * para yatirma
// * para çekme
// * çıkış

/**
 * * bir bankamatik uygulaması yapalım.
 * * uygulamada 1e basıldığında bakiyemiz görüntülensin 2ye basıldığında para yatırma işlemi 3e basıldığında para çekme ve 4e basıldığında çıkış işlemini yapalım
 * * öncelikle bir secim yapacağımız için secim diye String bir değişken tanımlayalım ve "" boş bir değer atayalım.
 * * daha sonrasın switch yapısı ile yapacağımız işleme dair koşul bloklarını oluşturalım.
 * * daha sonrasında bu işlemi bir döngü içerisine alalım ki uygulamayı her seferinde yeniden başlatmak zorunda kalmayalım.
 * * burda do-while döngüsü kullanacağız
 * * yapılacak işlemi do kısmını yazıyoruz ve while kısmındaki koşulada (secim != "4") secim 4e eşit olmadığı sürece döngümüzün çalışmasını istiyoruz
 * * yani çıkış işlemine
 * * tabiki secim değişkenini dışarda tanımlıyoruz.
 * * şimdi klavyeden değer girebilmek için bir tanımlama yapmalız.
 * * ve bunu tanımladığımız secim değişkeninin içine atayacağız bu işlemi do kısmında yapıyoruz
 * * bakiyemizi görüntüleyebilmek için dışarda bir bakiye diye double bir değişken tanımlıyoruz
 * * eğer do içersinde tanımlarsak ve bunu = 0 dersek her döngüde tekrardan 0 a eşitlenecek
 * * o yüzden dışarda tanımlıyoruz
 * * para yatırma işlemi kısmında gerekli işlemlerimi yapıyoruz
 * * para çekme kısmında gerekli işlemlerimi yapıyoruz
 * * şimdi birde ek hesap diye bir değişken tanımlayalım 
 */
import 'dart:io';

void main(List<String> args) {
  String secim = "";
  double bakiye = 0;
  double ekHesap = 1000;
  double ekHesapLimiti = 1000;

  do {
    print(
        "bakiye için 1e\npara yatırma için 2ye\npara çemke için 3e\nçıkış için 4e basınız\nseciminiz :");
    secim = stdin.readLineSync()!;

    switch (secim) {
      case "1":
        print("bakiyeniz : $bakiye TL");
        print("ek Hesap Bakiyeniz : $ekHesap TL");
        break;
      case "2":
        print("yatirmak istediğiniz miktar: ");
        double yatirilan = double.parse(stdin.readLineSync()!);

        if (ekHesap < ekHesapLimiti) {
          double ekHesaptanKullanilan = ekHesapLimiti - ekHesap;
          if (yatirilan >= ekHesaptanKullanilan) {
            ekHesap = ekHesapLimiti;
            bakiye = yatirilan - ekHesaptanKullanilan;
          } else {
            ekHesap += yatirilan;
          }
        } else {
          bakiye += yatirilan;
        }
        break;
      case "3":
        print("çekmek istediğiniz miktari giriniz : ");
        double cekilenTutar = double.parse(stdin.readLineSync()!);
        if (cekilenTutar <= bakiye) {
          print("paranızı alabilirisinz");
          bakiye -= cekilenTutar;
        } else {
          double toplam = bakiye + ekHesap;
          if (toplam >= cekilenTutar) {
            print("ek hesap kullanılsın mı?(e/h)");
            String ekHesapTercihi = stdin.readLineSync()!;

            if (ekHesapTercihi == "e") {
              print("paranızı alabilirisinz");
              ekHesap -= (cekilenTutar - bakiye);
              bakiye = 0;
            } else {
              print("bakiyeniz yetersiz");
            }
          }
          print("çekilecek tutar bakiyeyi aşıyor");
        }
        break;
      case "4":
        print("çıkış");
        break;
      default:
        {
          print("hatalı seçim yaptınız");
        }
    }
  } while (secim != "4");

  print("uygulamadan çıkıldı");
}
