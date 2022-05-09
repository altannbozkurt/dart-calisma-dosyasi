/*
 todo: liste
 * Aynı	türde	verileri	bir	arada	tutar.
 * 
 * İndeks	numaraları	0	dan	başlar.
 * 
 * Veri	eklendikçe	otomatik	olarak	boyutu	artar
 
 * List ikiye ayrılır
 *  1-Sabit uzunluklu
 *  2-Büyüyen listeler
 * 
 * Diğer dillerde dizi olarak bilinen yapılar dart dilinde sabit uzunluklu liste olarak kullanılır.
 * 
 * List<int> numaralar = List.filled(10, 0); //10 eleman içeren sabit uzunluklu liste yani dizi.
 * 
 * Index numaraları 0'dan baslar yani listenin ilk elemanına erişmek için 0. indexine bakılır. numaralar[0] diyerek..
 * 
 * growable : true yaptığımızda listeyi dinamik hale çeviriyoruz büyüyen bir liste oluyor eğer belirtmezsek false olarak tanımlıdır.
 * 
 */

void main(List<String> args) {
  // * sabit uzunluklu liste en basit hali
  List yeniListe = List.filled(5, 1);
  for (int aktar in yeniListe) {
    print("${aktar}");
  }

  print("********");

  // * sabit uzunluklu listede indexlerdeki verileri değiştirme

  List ikinciListe = List.filled(5, 0);
  ikinciListe[1] = 5;
  ikinciListe[0] = 2;
  for (var aktar in ikinciListe) {
    print(aktar);
  }

  // * listelerin nasıl göründüğüne bakalım

  print(ikinciListe);
  print(ikinciListe.length);
  print(ikinciListe[0]);

  // * isimler listesine toString ile int bir ifadeyi string gibi yazdırdık

  List<String> isimler = List.filled(3, "");
  isimler[0] = "altan";
  isimler[1] = 31.toString();

  for (var isimleriYazdir in isimler) {
    print(isimleriYazdir);
  }

  // * dynamic kullanarak karışık liste yapabiliriz

  List<dynamic> karisik = List.filled(5, 0);
  karisik[0] = "altan";
  karisik[1] = 15;
  karisik[2] = true;

  for (var karisigiGoster in karisik) {
    print(karisigiGoster);
  }

  for (int i = 0; i < karisik.length; i++) {
    print("$i indeksindeki değer: ${karisik[i]}");
  }
}
