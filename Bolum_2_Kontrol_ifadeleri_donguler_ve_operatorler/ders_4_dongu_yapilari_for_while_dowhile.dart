/*
* Tekrar eden işlemler için döngülerden faydalanırız. 3 temel döngü çeşidi vardır, yapılan işlemler aynı olsada kullanım amaçları farklılık gösterir.

* for : genellikle tekrar sayısı bilinen durumlarda kullanılır. yazım yöntemi şu şekildedir

*  for(dongude_kullanilacak_kontrol_degiskeninin_baslangic_degeri ; dongunun_bitme_sarti; her_dongu_sonunda_yapilacak_islem)

*  for(var i=0; i<10; i++)

* Ayrıca gelişmiş for döngüsü ile de bir dizi veya listenin tüm elemanları okunabilir
* for(String isim in isimlerListesi){
*  print(isim);
* }

* while : bir koşul doğru oldugu sürece yapılacak işlemler için kullanılan döngü çeşidi

*  while(sayac < 10){ 
*    yapılacak islem;
*    sayac ++;
*    }

* do - while : koşul sağlansın veya saglanmasın bir kere çalıştırılır ve sonra şart kontrol edilir.

* do{
*  print("emre");
*  i++
* }while(i<10);

* Döngü kullanımlarında break ve continue anahtar kelimelerini kullanacağımız durumlar olabilir. Kısaca
* break = çalışan döngüden çıkılmasını
* continue = döngü çalısırken belli bir durumda tekrar basa dönmesini sağlar.

* döngülerde label yani etiketler kullanılabilir. Böylece birden fazla döngüyü bu etiketler ile kolayca kontrol edebiliriz.
* Etiketler ile beraber break ve continue kelimeleri kullanılabilir.
* label : for(....){
*  break label;
* }
*/

void main(List<String> args) {
  // * for dönngüsü

  for (int i = 0; i < 5; i++) {
    print("$i döngüde adım : altan bozkurt");
  }

  // * listelerde for döngüsü in kullanımı
  List<String> isimler = <String>["altan", "begüm", "korcan", "berfin"];

  for (String isimleriAta in isimler) {
    print(isimleriAta);
  }

  // * listelerde for döngüsü ile normal kullanım
  for (int i = 0; i < isimler.length; i++) {
    print("${i + 1} indeksindeki isim : ${isimler[i]}");
  }

  // * while döngüsü

  int sayac = 0;
  while (sayac < 3) {
    print("okunan sayaç değeri : $sayac");
    sayac++;
  }

  // * do while döngüsü

  int doIleSayac = 0;
  do {
    print("ikinci okunan sayac değeri : ${doIleSayac + 1} ");
    doIleSayac++;
  } while (doIleSayac < 5);

  // * break ile 5 kadar olan sayıları yazdırma burda break kullanarak 5ten sonrasını yazdırmıyoruz

  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      break;
    }
    print("i değeri $i");
  }

  // * for döngüsünde continue kullanımı 5ten büyük olanları yazdırıyoruz ve ilk 5 sayı için herhangi bir işlem yaptırmıyoruz

  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      print("continue i değeri : $i");
    } else {
      print("i değeri 5den küçük olduğu için herhangi bir işlem yapılmayacak");
      continue;
    }
  }

  // * for döngüsü ile çarpım tablosu for içinde for kullanımı

  for (int i = 1; i <= 10; i++) {
    for (int j = 1; j <= 10; j++) {
      print("$i x $j = ${i * j}");
    }
  }
}
