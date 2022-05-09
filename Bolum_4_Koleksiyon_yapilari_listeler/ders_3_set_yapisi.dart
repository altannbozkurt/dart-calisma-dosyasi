/*
 * Bir diğer koleksiyon yapısı da Set yapısıdır.
 * List den en önemli farklı elemanları sıralı olarak tutmaz, bu durumda list lerde oldugu gibi indexleri kullanamayız
 * Bir diğer farkı ise bir elemandan sadece bir tane olur yani her bir eleman birbirinden farklıdır.
 * 
 * index olmadan elemanları kontrol etmek için contains methodu kullanılabilir. onun dışında listelerdeki methodlar set için de geçerlidir.
 * 
 */

void main(List<String> args) {
  // * Eğer bu normal bir liste olsaydı 9 elemanlı bir liste olacaktı.
  // * Set yapısının kullanarak aynı olarak verilen değerleri bir defa yazdırdık.
  // * Her elemandan bir tane tutar.
  Set<String> isimler = Set();
  isimler.add("altan");
  isimler.add("ahmet");
  isimler.add("altan");
  isimler.add("mehmet");
  isimler.add("begüm");
  isimler.add("korcan");
  isimler.add("altan");
  isimler.add("korcan");
  isimler.add("begüm");

  for (var isimleriYazdir in isimler) {
    print(isimleriYazdir);
  }

  // * bu şekilde de tanımlayabiliriz

  Set<int> numaralar = Set.from([1, 2, 3, 4, 5, 1, 5, 1, 6, 8, 5, 3, 2]);

  for (var numaralariGetir in numaralar) {
    print(numaralariGetir);
  }

  // * Listede tanımladığımız elemanları sete aktaralım

  List<int> ciftSayilar = <int>[0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0];
  print(ciftSayilar);

  Set<int> ciftSayilariAktar = Set();
  ciftSayilariAktar.addAll(ciftSayilar);
  print(ciftSayilariAktar);
}
