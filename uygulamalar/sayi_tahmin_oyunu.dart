import 'dart:io';
import 'dart:math';
/**
 * 
 * Bu örnekte bilgisayar en başta rastgele bir sayı üretecek, ardından döngü içerisinde kullanıcıdan sürekli sayı istenecektir. Kullanıcının girdiği sayı, bilgisayarın tuttuğu ile karşılaştırılarak bilemediği sürece devam edecektir. Ayrıca "Aşağı" veya "Yukarı" diye ipucu verilecektir.

Bir taraftan da kullanıcının 10 kez deneme hakkı olacak ve bu hak her seferinde bir azaltılacak, 0 olduğunda da döngü sona erecektir.
 */

void main(List<String> args) {
  int hak = 1;
  int tahmin;

  var rastgele = Random();
  int tutulanSayi = rastgele.nextInt(500);

  do {
    print("$hak hakkınız. Tahmininizi giriniz");
    tahmin = int.parse(stdin.readLineSync()!);

    if (tahmin > tutulanSayi && hak <= 10) {
      print("aşağı");
    } else if (tahmin < tutulanSayi && hak <= 10) {
      print("yukarı");
    } else if (tahmin == tutulanSayi) {
      print("tebrikler $hak denemede bildiniz. sayi $tutulanSayi");
    }

    hak++;

    if (hak > 10) {
      print("hakkınız doldu");
    }
  } while (tahmin != tutulanSayi && hak <= 10);
}
