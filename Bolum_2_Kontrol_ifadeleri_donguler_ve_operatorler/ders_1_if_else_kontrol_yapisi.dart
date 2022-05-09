/*
* if ve else yapıları ile programlarımızı dallandırıp yönlendirebiliriz.
* Eğer koşullar sağlanıyorsa veya sağlanmıyorsa belli kod bloklarının çalıştırılmasını sağlamak için if yapısını kullanılır.
* Genel kullanım şekli şöyledir:

* if(saglanması gereken şart){
*   verilen şart sağlanmışsa çalısacak blok
* }else{
*  verilen şart sağlanmamışsa çalışacak blok
* }

* benzer şekilde if yapımızı else if ile daha da derinleştirebiliriz.

* if(saglanması gereken şart){
*  verilen şart sağlanmışsa çalısacak blok
* }else if(yukarıdaki şart doğru değilse çalışır ve koşulumuz yazılır.){
*  verilen şart sağlanmamışsa çalışacak blok
* }else if(yukarıdaki şart doğru değilse çalışır ve koşulumuz yazılır.){
*  verilen şart sağlanmamışsa çalışacak blok
* }else{
*  verilen şart sağlanmamışsa çalışacak blok
* }

* bu yapıda herhangi bir if blogunda kod calıstırılırsa alttaki şartlara bakılmaz ve program;
* son else kısmından sonra gelen süslü parantezlerden sonra çalışmaya devam eder

* ternary if yazımı ile kısa bir şekilde şart belirten ifadeler yazılabilir. Kullanımı :
* koşul ? expression1 : expression2
* eğer koşul doğru ise expression1 değeri, yanlış ise expression2 değeri kullanılır.

* kısa kullanım ile değişkenlerin null değerde olup olmadıkları da kontrol edilebilir
* expression1 ?? expression2
* burda expression1 eğer null değilse kullanılır, eğer null ise expression2 kullanılır.
 */

void main(List<String> args) {
  int ilkSayi = 10;
  int ikinciSayi = 20;

  // * normal if else kullanimi

  if (ilkSayi > ikinciSayi) {
    print("büyük olan $ilkSayi");
  } else {
    print("büyük olan $ikinciSayi");
  }

  // * kısa if else kullanimi

  int buyukDeger = ilkSayi > ikinciSayi ? ilkSayi : ikinciSayi;
  print(buyukDeger);

  // * null değer atadığımızda bununla ilgili örnek

  String? ad = null;
  String? soyad = 'bozkurt';
  String? mesaj;

  mesaj = ad ?? soyad;
  print("Merhaba $mesaj");
}
