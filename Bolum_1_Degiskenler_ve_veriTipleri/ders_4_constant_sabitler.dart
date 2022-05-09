/**
* * Sabitler	içerisine	bir	kere	veri	atıldığında	bir	daha	değiştiremeyeceğiniz	yapılardır.
* * final	ve const ismi	ile	kullanılırlar.
* * const değişken	oluşturduğumuz	anda	hafızada	oluşur.
* * final değişken	oluşturulduktan	sonra	kod	çalıştırıldığında	hafızada	oluşur.
* * const sınıf	içinde	kullanılmaz.
* * Genelde	yaygın	kullanım	final dır.
* * Sabit	kullanmak	memory yönetimini	rahatlatır.
* * Çünkü	hafızada	sabit	için	yer	ayrılır	ve	değişim	olmayacağı	için	açılan	yer	yeni	bir	değer	almak	için	beklemez.
* * Sadece	kullanılma	amaçlı	değişkenler	için	kullanılması	için	uygundur.
 */

void main(List<String> args) {
  final pi = 3.14;
  print(pi);

  final String mesaj = "merhaba";
  print(mesaj);

  const sayi = 20;
  print(sayi);

  const double sayi2 = 10.5;
  print(sayi2);
}