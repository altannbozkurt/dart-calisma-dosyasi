import 'dart:math';

void main(List<String> args) {
  var rnd = Random();
  var rnd2 = Random();
  int zar;
  int zar2;
  do {
    zar = rnd.nextInt(6);
    zar2 = rnd2.nextInt(6);

    if (zar > zar2) {
      print("${zar + 1} büyüktür ${zar2 + 1}'den");
    } else if (zar < zar2) {
      print("${zar2 + 1} büyüktür ${zar + 1}'dan");
    } else {
      print("zarlar birbirine eşit ${zar + 1} ${zar2 + 1}");
    }
  } while (zar != zar2);
  print("program sonlandırıldı");
}
