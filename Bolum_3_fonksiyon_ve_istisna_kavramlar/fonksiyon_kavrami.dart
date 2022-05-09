/*
* Fonksiyon  kavramı sayesinde problemlerimizi küçük alt problemlere parçalayarak çok daha okunaklı, hata bulması kolay uygulamalar geliştirebiliriz.

* Bir uygulama geliştirirken, bir problemi çözerken o problemde belli bir işi yapan kodları methodlara bölmemiz gerekir.
* Bunun için method veya fonksiyon oluşturabiliriz.

* Methodlar parametre alabilir veya herhangi bir parametreye sahip olmayabilir.

* Methodlar geriye bir değer dönderebilir. Değer döndürmeyen method tanımlarının başına void yazılır.

* Dart dilinde return ve method geri döndürme veri tipi değeri opsiyoneldir, yani belirtmek zorunda değiliz.(Belirtilmesi önerilir)

* Belirli	işlemleri	temsil	eden	yapılardır.

* Kullanma	amacımız	tekrarlanan	kod	yapılarının	önüne	geçmektir.

* Programlamayı	daha	pratik	bir	hale	getirir.

* Kodun	okunmasına	faydası	vardır.

todo: Geri	Dönüş	değeri	olmayan	fonksiyonlar

* Sadece	yaptırılmak	istenen	işlemi	yapan	metodu	kullanana	veridöndürmeyen	fonksiyonlardır

todo : Geri	Dönüş	değeri	olan	fonksiyonlar

*  Yapılan	işlem	sonucunda	metodu	kullanana	veri	dönüşü	yapan	fonksiyonlardır.

todo: Fonksiyonların	Parametre	Alması

* Parametre	fonksiyonlara	dışarıdan	verilen	değerlerdir.
* Her	fonksiyonun	parametresi	olmak	zorunda	değildir.
* Parametreler	tanımlaması	değişkeni	tanımlar	gibidir.	
* Parametreler	,	virgül	ile	birden	fazla	tanımlanabilir.

* Birden	fazla	parametre	kullanılabilir.


* Kısa method Fat Arrow : tek satırlık statement içeren methodlarımızı kısa bir şekilde göstermeye yarar.
* Bu kullanımda süslü parantez ve return anahtar kelimeleri kullanılmaz. => 

 todo: optional parametreli fonksiyonlar

* methodlarımıza geçtiğimiz parametrelerin isteğe bağlı olmasını yani verilse de olur verilmese de olur gibi durumlarda süslü ve köşeli parantez kullanırız.

* Eğer köşeli parantez [] kullanırsak bu ilgili parametrelerin methoda gönderilmesi zorunluluğunu ortadan kaldırır.

* Eğer süslü parantez {} kullanırsak burda da parametreler isteğe bağlıdır ama bu parametreleri belirtirken sıralama önemini kaybeder ve de parametreleri geçerken isimlerini   vermek zorunda kalırız.

* Ayrıca method tanımlarında parametrelere = diyerek varsayılan değerler atayabiliriz. Bu değerler sayesinde eğer kullanıcı  method parametrelerini atamamışsa bu varsayılan değerler kullanılır.

*/
void main(List<String> args) {
  // * geri dönüş değeri olmayan fonksiyon
  selamla();

  // * geri dönüş değeri olmayan parametreli fonksiyon
  selamla2("altan");
  sayi1(5);

  // * geri dönüş değeri olan fonksiyon
  String selam = selamla3();
  print(selam);

  int sy2 = sayi2();
  print("bu sayinin karşılığı : $sy2");

  // * geri dönüş değeri olan parametreli fonksiyon
  String merhaba = selamla4("altan");
  print(merhaba);

  int sy3 = sayi3(29);
  print("bu sayi : $sy3");

  // * birden fazla parametreli geri dönüş değeri olmayan fonksiyon
  selamla5("altan", "bozkurt");

  sayi4(10, 30);

  // * birden fazla parametreli geri dönüş değeri olan fonksiyon
  String selamlar = selamla6("altan", "bozkurt");
  print(selamlar);

  int sy5 = sayi5(40, 25);
  print("bu sayiların toplamı : $sy5");

  // * optional parametreli fonksiyonlar

  // * zorunlu olmayan durum []

  int zorunluDegil = parametreZorunluDegil(5, 10);
  print(zorunluDegil);

  // * isteğe bağlı parametre
  int istegeBagli = istegeBaglParametre(10, s2: 3, s3: 5, s4: 7);
  print(istegeBagli);

  // * fonksiyonlarda isteğe bağlı parametre kullanarak if kullanimi

  ucgenKenarIsimlendir(kenar1: 2, kenar2: 2, kenar3: 1);
}

// * geri dönüş değeri olmayan fonksiyon

void selamla() {
  print("merhaba altan");
}

// * geri dönüş değeri olmayan parametreli fonksiyon

void selamla2(String isim) {
  print("selam $isim");
}

void sayi1(int s1) {
  print("bu sayi : $s1");
}

// * geri dönüş değeri olan fonksiyon

String selamla3() {
  return "tekrardan merhaba altan";
}

int sayi2() {
  return 15;
}

// * geri dönüş değeri olan parametreli fonksiyon

String selamla4(String isim) {
  return "yeniden selam $isim";
}

int sayi3(int s3) {
  return s3;
}

// * birden fazla parametreli geri dönüş değeri olmayan fonksiyon

void selamla5(String isim, String soyad) {
  print("merhaba $isim $soyad");
}

void sayi4(int s1, int s2) {
  print("$s1 + $s2 = ${s1 + s2}");
}

// * birden fazla parametreli geri dönüş değeri olan fonksiyon

String selamla6(String isim, String soyad) {
  return "selamlar $isim $soyad";
}

int sayi5(int s1, int s2) {
  return s1 + s2;
}

// * geri dönüş değeri olan fonksiyonlarda kısa kullanım => fat arrow

int sayilariCarp(int s1, int s2) => s1 * s2;

// * Eğer köşeli parantez [] kullanırsak bu ilgili parametrelerin methoda gönderilmesi zorunluluğunu ortadan kaldırır.

int parametreZorunluDegil(int s1, int s2, [int s3 = 0]) {
  return s1 + s2 + s3;
}

// * Eğer süslü parantez {} kullanırsak burda da parametreler isteğe bağlıdır ama bu parametreleri belirtirken sıralama önemini kaybeder ve de parametreleri geçerken isimlerini vermek zorunda kalırız.

int istegeBaglParametre(int s1, {int s2 = 0, int s3 = 0, int s4 = 0}) {
  return s1 + s2 + s3 + s4;
}

// * fonksiyonlarda isteğe bağlı parametre kullanarak if kullanimi

void ucgenKenarIsimlendir({int kenar1 = 1, int kenar2 = 1, int kenar3 = 1}) {
  if (kenar1 == kenar2 && kenar1 == kenar3) {
    print("eşkenar üçgendir");
  } else if (kenar1 != kenar2 && kenar1 != kenar3 && kenar2 != kenar3) {
    print("çeşitkenar üçgendir");
  } else {
    print("ikizkenar üçgendir");
  }
}
