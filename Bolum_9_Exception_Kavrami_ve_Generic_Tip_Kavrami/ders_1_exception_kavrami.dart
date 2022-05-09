/*
 * Exception Istisna : İstisna, programın çalışması sırasında ortaya çıkan bir sorundur. 
 * Bir istisna, bir çok değişik nedenden dolayı meydana gelebilir.
 * 
 * Bir metot, try ve catch anahtar kelimelerinin kombinasyonunu kullanarak bir istisnayı yakalayabilir. 
 * Try/catch bloğu, istisna oluşması muhtemel kodun etrafına yerleştirilir.
 * Ayrıca on ExceptionName{} blogunu cıkacak istisnanın adını biliyorsak kullabiliriz.
 * Finally blogu istisna çıksın çıkmasın calısacak olan method blogudur.
 * 
 * throw ile hata cıkan yerde kendimiz hata fırlatabiliriz.
 * 
 * Kendi istisna sınıfımızı olusturabilirz. Olusturdugumuz istisna ile ilgili sınıf implements Exception diye tanımlanır.
 * 
 * exception kısımları runtime kısmında çıkar.
 * 
 * undhandle expection diye hata çıkabilir.
 */

void main(List<String> args) {
  print("program başladı");

  try {
    int sayi = 100 ~/ 5;
    print(sayi);
  } catch (e) {
    print("hata çıktı: ${e.toString()}");
  } finally {
    print("işlem bitti");
  }

  print("program bitti");

  print("program başladı");
  print("yeni uygulama");
  try {
    int sayi2 = 100 ~/ 0;
    print(sayi2);
  } on IntegerDivisionByZeroException {
    print("bölen sıfır olamaz");
  } catch (e) {
    print("hata çıktı: ${e.toString()}");
  } finally {
    print("işlem bitti");
  }

  print("program bitti");

  print("yeni uygulama");
  try {
    int sayi2 = 100 ~/ int.parse("altan");
    print(sayi2);
  } on FormatException catch (e) {
    print(e);
    print("hata mesajı : ${e.message}");
    print("hata nerde çıktı : ${e.source}");
  } catch (e) {
    print("hata çıktı: ${e.toString()}");
  } finally {
    print("işlem bitti");
  }

  print("program bitti");
}
