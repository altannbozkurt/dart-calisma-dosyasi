void main(List<String> args) {
  Map<String, dynamic> map = Map();
  var map2 = <String, dynamic>{};

  map["id"] = 5;
  map["isim"] = "altan";
  map["renk"] = "mor";
// * olan bir mapi atayabileceğimiz gibi yeni bir mapte oluşturabiliriz.
  var yeniMap = Map.from(map);
  var yeniMap2 = Map.from({"deger": "yeni"});

  // *
  var mapFromEntries = Map.fromEntries(map.entries);
  print(mapFromEntries);

// *
  var liste = [1, 2, 3, 4];
  var mapFroumIterable = Map<String, String>.fromIterable(liste,
      key: (dynamic item) {
        return "$item";
      },
      value: (item) => "${item * 2}");
  print(mapFroumIterable);

  // *

  map.update(
    "id_yeni",
    (value) => value * 3,
    ifAbsent: () => 100,
  );
  print(map);

  map.update("id", (value) => value * 5);
  print(map);

  // * eğer yoksa bu değeri koy varsa olan değeri kullan anlamına geliyor eğer soyisim diye bir keyimiz olsaydı direk orda yazanı kullanacaktı
  map.putIfAbsent("soyisim", () => "bozkurt");
  print(map);
}
