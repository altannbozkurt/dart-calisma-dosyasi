import 'dart:math';

class VeritabaniIslemler {
  String _kullaniciAdi = "altan";
  String _sifre = "123456";
// * 1.
  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == "altan" && _sifre == "123456") {
        return true;
      } else
        return false;
    } else
      return false;
  }

  // * 3. işlem
  // * kullanici adı ve şifreyi girebilecek bir kurucu method tanımlayalım
  // * isimlendirilmiş kurucu tanımladığımızda main dosyamınzdaki Veritabani sinifi kızacaktir o yüzden isimsiz bir kurucu oluşturalım.
  VeritabaniIslemler() {}
  VeritabaniIslemler.loginWithNamedAndPassword(
      String kullaniciAdi, String sifre) {}

// * 2. işlem
// * internetin var olup olmadığını kontrol ediyoruz
// * fakat bunu random sınıfıyla yapıp rastgele oluşturulsun true yada false değer döndürmesini istiyoruz.
// * bu şekilde internet bir olsun bir olmasın deneyelim.
// * bağlan çalıştığında internet varsa dbye bağlanalım
// * internetVarmi methodunu private yapıyoruz çünkü bu sınıfı kullanacak kişinin internet var mı yokmu methodunu görmesine gerek yok
// * burdaki tek amacımız veritabanına bağlanmak. son kullanicinin bilmesine gerek yok internetvar mı yı
  bool _internetVarMi() {
    if (Random().nextBool()) {
      return true;
    } else
      return false;
  }
}
