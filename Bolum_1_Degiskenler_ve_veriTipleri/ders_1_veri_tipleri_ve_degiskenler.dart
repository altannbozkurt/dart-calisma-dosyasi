/**
 * Todo: Veri Tipleri ve Değişken Kavramı
 
 * * Değişken : bir işlemi gerçekleştirmek için yapılması gereken ilk şey o veriyi hafızaya atamaktır. +
 * * İşlem yapmak istediğimizde de veriyi hafızadan çağırıp gerekli işlemleri yerine getirmektir. +
 * * Hafızadaki verileri ifade etmek için programlama dillerinde değişkenleri kullanırız. +
 * * Özetle vermek gerekirse; programlama dilinde işlediğimiz verileri bilgisayarın hafızasında tutmak için yapmış olduğumuz tanımlamadır.
 * 
 * * Modern	diller	hafızada	saklanan değerleri	değişkenler	ile	ifade	etmektedir.	
 * 
 * * Değişkenler	hafızada	geçici	olarak	saklanan	değerleri	temsil	eder.
 * 
 * * Dart	dilinde	değişken	için	tür	belirtmemize	gerek	yoktur.
 * 
 * * var anahtar kelimesi variable anlamına gelir ve veri türünü belirtmek istemiyorsak kullanırız. Atanan ifadeye göre otamatik olarak türü belirler.
 * 
 * 
 * *  Tutulan verinin türüne göre farklı veri tipleri vardır. Dart built - in olarak şu tipleri içerir
 * * - Number
 * *  - int : tamsayılar
 * *  - double : ondalıklı sayılar
 * 
 * * - String : metinsel ifadeler
 * 
 * * - Boolen : true / false için
 * 
 * ! Tüm veri tipleri Object yani nesneleridir.
 * 
 * ! Not : Değişkenler kalıcı değildir. 
 * 
 * ! Programdan çıkıldığında değerler kaybolur. Kalıcı değerler için değişkenlerin değerleri diske yazılmalıdır. 
 * 
 * 
 * todo: Literals – Değerlerin	Yazılma	Kuralları
 * 
 * * Literals değişkenler için kullanılan	değerlerin	nasıl	yazılması	gerektiğini temsil	eder.
 * 
 * ? "Ahmet" - Metinsel ifade (String)
 * ? "A" - Harfsel ifade (String)
 * ? 23 - Tam sayi (int)
 * ? 1.45 - Ondalıklı sayı (double)
 * 
 * todo: Değişkenlere	isim	verme	kuralları
 * 
 * * Case sensitive'dir. Büyük küçük harf duyarlıdır-farkı vardır.
 * * Rakamla başlayamaz.
 * * @ ve % değişeken içersinde kullanılamaz.
 * 
 *  todo: Type Safety – Tür	Güvenliği
 * 
 * ! Oluşturduğunuz	değişkene	farklı	türde	değişken	atayamazsınız.
 * ? String bir ifade ise int ifade atayamazsınız.
 */

void main(List<String> args) {
  int sayi = 10;
  print(sayi);

  var sayi4 = 40;
  print(sayi4);

  double sayi2 = 20.5;
  print(sayi2);

  var sayi5 = 23.5;
  print(sayi5);

  num sayi3 = 30;
  print(sayi3);

  String isim = "altan";
  print(isim);

  var soyad = "bozkurt";
  print(soyad);

  bool evliMi = true;
  print(evliMi);

  print("sayi 1: $sayi + sayi4 : $sayi4 = ${sayi + sayi4}");

  var kilo = 80;
  var boy = 187;

  print(
      "sizin kilonuz $kilo ve boyunuz $boy bunların ortalaması ${((kilo + boy) / 2)}");
}
