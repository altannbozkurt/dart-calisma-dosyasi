/*
 * Map yapısı da set gibi sırasız bir şekilde elemanları saklayan bir koleksiyon öğesidir.
 * Bu yapıyı listelerden ve setten ayıran özellik ise elemanları key-value olarak saklamasıdır.
 * Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerin unique yani eşsiz olması gerekmektedir.
 * 
 * Map yapısını sözlüğe benzetebiliriz. Tıpkı sözlük gibi birbirden farklı elemanları içerir.
 * Sabit uzunlukta değildir, dinamik uzunluğa sahiptir.
 */

void main(List<String> args) {
  Map<String, int> alanKodlari = {
    "ankara": 312,
    "bursa": 224,
    "mersin": 324,
    "istanbul": 212
  };
  print(alanKodlari);

  //* istediğimiz veriyi çekmek isterken key değerini gireceğiz
  print(alanKodlari["mersin"]);

  Map<String, dynamic> altan = {"soyad": "bozkurt", "yas": 31, "evliMi": true};

  print(altan["soyad"]);
  print(altan["yas"]);
  print(altan["evliMi"]);

  // * Boş bir map
  Map<String, dynamic> myMap = Map();
  Map<String, dynamic> myMap2 = {};

  // * boş mape bir değer atayalım

  var deneme = myMap2["sayi"] = 100;
  print(deneme);

  // * for döngüsü ile gezme
  for (String oAnkiDeger in altan.keys) {
    print("keyleri değerleri : $oAnkiDeger");
    print("değeri ekrana getir ${altan[oAnkiDeger]}");
  }

// * sadece value(deger) olarak yazdırdık
  for (dynamic deger in altan.values) {
    print(deger);
  }

  // * ikisinin aynı anda gezebilir entries ile
  for (var ikisiniGez in altan.entries) {
    print("key degeri : ${ikisiniGez.key} value(deger) : ${ikisiniGez.value}");
  }

  // * bir değer benim yapımda var mı yokmu anlayalım

  if (altan.containsKey("yas")) {
    print("bulunana yas degeri ${altan["yas"]}");
  } else {
    print("böyle bir deger bulunamadı");
  }
}
