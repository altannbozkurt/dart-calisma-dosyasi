/*
 * Dinamik olarak büyüyen küçülen koleksiyonlarımız varsa sabit uzunluklu listeler yerine
 * buyuyen listeleri kullanırız. Bu listelere varsayılan olarak boyut vermemiz gerekmez.
 * Tanımlanması sabit uzunluklu dizilere benzer sadece burada listenin boyutunu belirtmeyiz.
 * add eleman ekler, 
 * clear tüm elemanları siler, 
 * remove verilen elemanı siler,
 * removeAt belirtilen indextekielemanı siler
 * Ayrıca [] kullanarak belli bir indexteki elemanı güncelleyebilirz.
 */

void main(List<String> args) {
  List<int> sayilar = <int>[];
  sayilar.add(1);
  sayilar.add(3);
  sayilar.add(5);

  print(sayilar);
  print(sayilar.length);

  for (var sayilariGoster in sayilar) {
    print(sayilariGoster);
  }

  List<String> meyveler = ["elma", "armut"];
  meyveler.add("kiraz");
  meyveler.add("muz");
  meyveler.add("çilek");

  print(
      "bu listede boş mu : ${meyveler.isEmpty}"); // * bu liste boş mu diye bakıyoruz dolu olduğu için false değer alıyoruz.
  print(
      "listenin boyutu nedir kaç eleman var : ${meyveler.length}"); // * listenin boyutuna yani kaç elemanı olduğuna gösteriyor
  print(
      "listenin ilk elemanı : ${meyveler.first}"); // * listenin ilk elemanını gösterir
  print(
      "listenin son elemanı : ${meyveler.last}"); // * listenin son elemanını gösterir
  print(
      "bu listede var mı : ${meyveler.contains("elma")}"); // * listede olup olmadığına baktık ve elma listemizde olduğu için true değer döndürdü
  print(
      "bu listede var mı : ${meyveler.contains("ananas")}"); // * listede olup olmadığına baktık ve ananas listemizde olmadığı için false değer döndürdü

  var liste = meyveler.reversed; // * listeyi tersine çevirdik.
  print("listenin ters hali $liste");

  meyveler.sort(); // * listeyi alfabeye göre sıraladık
  print("listeyi sırala ${meyveler}");

  meyveler.removeAt(2); // * yazılan indexteki değeri siler
  print("yazılan indeksteki meyveyi siler : $meyveler");

  meyveler.remove("armut"); // * istenilen elemanı siler
  print("geriye kalan liste : $meyveler");

  // * meyveler.clear();  // * bütün listeyi siler

  for (var meyveleriGoster in meyveler) {
    print(meyveleriGoster);
  }
}
