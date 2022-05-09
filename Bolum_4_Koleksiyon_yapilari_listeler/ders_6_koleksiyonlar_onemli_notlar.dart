// * koleksiyon yapıları list,map,set hepsi itarable denilen birşeyden türetiliyor
// * list,map,set koleksiyon yapılarını var ilede tanımlayabiliriz

void main(List<String> args) {
  // * dinamik bir liste
  var listem = [];
  // * bunun string bir ifade tuttuğunu gösterelim
  var listem2 = <String>[];

  // * Setleri ve Mapleri süslü parantezle gösterebiliriz

  // * boş bıraktığımızda bunu bir map olarak görüyor
  var myMs = {};

  // * içine bir değer yazıldığında bunu set olarak görür
  var mySet = {"altan"};

  // *Maplerde key - value değeri olduğu için bu değerleri verirsek artık bunu bir Map olarak okuyacak
  var myMap = {"yas": 31};

  // * ne tür değeler alıcağına belirteceksek Setlerde:
  var mySet2 = <String>{"begüm"};

  // * ne tür değeler alıcağına belirteceksek Maplerde:
  var myMap2 = <String, dynamic>{"begum": 30};

  // * liste tanımlayalım
  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

  // * bu iki listeyi birleştirelim
  var sonListe = [];
  sonListe.addAll(tekSayilar);
  sonListe.addAll(ciftSayilar);
  print(sonListe);

  // * az önceki yaptığımız işelim yani listeleri birleştirmeyi daha kolay bi şekilde tanımlayalim spreads operatörü kullacağız ... ile kullanıyoruz
  var sonListe2 = [...tekSayilar, ...ciftSayilar];
  print(sonListe2);

  // * spreads operatörü Maplerde kullanalım
  var map1 = {"ad": "altan"};
  var map2 = {"yas": 34};

  var sonMap = {...map1, ...map2};
  print(sonMap);

  // * spreads operatörü Setlerde kullanalım
  var set1 = {"altan"};
  var set2 = {"altan"};
  var set3 = {"begum"};
  var set4 = {"korcan"};

  var sonSet = {...set1, ...set2, ...set3, ...set4};
  print(sonSet);
}
