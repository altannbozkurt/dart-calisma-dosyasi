/*
 * KALITIM INHERITANCE : İki adet sınıf düşünelim. Birinin adı Ebeveyn diğerinin adı Çocuk olsun. 
 * Ebeveyn sınıfının özelliklerini anne+baba’nın işlevleri oluşturmaktadır. 
 * Çocuk ise bazı özellikler bakımından anne babaya benzerlik göstermektedir. (saç rengi, göz rengi) 
 * Bunların yanından çocukta anne ve babasında olmayan bazı özelliklerde yer alabilir.  ( Anne baba kısa boylu iken çocuğun uzun olması). 
 * Ebeveyn gibi üst sınıflara süper sınıflar denir.  Bunlardan türetilen alt sınıflara alt sınıflar denir. 

 * Dart da kalıtım bir sınıfın kendine ait özellikleri başka bir sınıfa aynen aktarması ya da bazı özellikleri diğer sınıflara izin vermesidir.

 * Extends anahtar kelimesi: bir sınıfa ait özelliklere başka bir sınava miras almak için kullanılır.

 * Her alt sınıf doğrudan bir tane süper sınıfa sahip olabilir. 
 * Her alt sınıf süper sınıfın özelliklerini taşır.  
 * Süper sınıftan alınan bazı özellikler değiştirilebilir. Aynen kullanılmak zorunda değildir. 
 * Kalıtımın basamakları çok uzun olmamalıdır.  Bu kötü tasarıma neden olur.

 * Kalıtımın Faydaları
 * Daha önceden yazılmış kod parçacıkları tekrar tekrar yazılmadan başka sınıflarda kullanılabilir.  
 * if, else, switch gibi kontrol ifadelerinin oolduğu sınıflar kötü tasarım örnekleridir. Bunun yerine kalıtım tercih edilmelidir.

 * Method overriding : üst sınıftaki değişken veya methodların alt sınıf tarafından değiştirilmesidir.
 * 
 * 
 * 
 * • Mevcut	bir	sınıftan	başka	bir	sınıf	türetmek	için	kullanılır.
 * • Kodun	tekrar	kullanabilirliğini artırır.
 * • Sadece	class için	geçerlidir.
 * • Super class extends kelimesi	ile	subclass’a eklenir.
 * • Bir	sınıfın	tek	kalıtımı	olabilir.
 * • Bir	sınıfa	birden	fazla	sınıf	kalıtım	yolu	ile	bağlanamaz.
 * • Üst	sınıfa	superclass denir.
 * • Alt	sınıfa	subclass denir
 * 
 */

import 'dart:ffi';

void main(List<String> args) {
  User user1 = User();
  var normal1 = NormalUser();
  SadeceOkuyabilenNormalUser user = SadeceOkuyabilenNormalUser();

  AdminUser user4 = AdminUser();
  User user5 = AdminUser(); // * upcasting yukarı çevrim
  User user6 = SadeceOkuyabilenNormalUser(); // * upcasting yukarı çevrim

  List<User> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(normal1);
  tumUserlar.add(user);

  user.girisYap();
  normal1.girisYap();
  user1.girisYap();

  test(user1);
  test(normal1);
  test(user);
  test(user4);
}

void test(User kullanici) {
  kullanici.girisYap(); // * polimorfizim çok biçimlilik
}

class User {
  late String email;
  late String passowrd;

  void girisYap() {
    print("genel user giriş yaptı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("normal user arkadaşlarını davet etti");
  }

// * override ile üstteki giriş yap metodunu eziyoruz.
  @override
  void girisYap() {
    print("normal user giriş yaptı");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser {
  void adiniSoyle() {
    print("ben sadece okuyabilirim");
  }

  @override
  void girisYap() {
    print("sadece okuyabilen user giriş yaptı");
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisiniGoster() {
    print("toplam user sayisi 20");
  }

  @override
  void girisYap() {
    print("admin user giriş yaptı");
  }
}
