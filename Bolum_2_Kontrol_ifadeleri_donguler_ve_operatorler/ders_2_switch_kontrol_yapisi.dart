/**
 * * switch: ard arda if -else if kullanmak yerine genellikle switch yapısı tercih edilir
 * * her bir case'den sonra break denilerek switch yapısından cıkılmalıdır.
 * 
 * * switch kullanırken sadece int ve string veri türleri kullanılır, boolean veya double kullanılmaz.
*/

void main(List<String> args) {
  String notDegeri = "AA";

  switch (notDegeri) {
    case "AA":
      print("Notunuz 90 - 100 aralığındadır");
      break;
    case "BA":
      print("Notunuz 80 - 90 aralığındadır");
      break;
    case "BB":
      print("Notunuz 70 - 80 aralığındadır");
      break;
    case "CB":
      print("Notunuz 60- 70 aralığındadır");
      break;
    case "CC":
      print("Notunuz 50 -60 aralığındadır");
      break;
    case "FF":
      print("Notunuz 50den düşük, dersten kaldınız");
      break;
    default:
      {
        print("hatalı değer girildi");
      }
  }

  int sayi = 10;
  int bolum = (sayi ~/ 10).toInt();

  switch (bolum) {
    case 4:
      print("sayı 40dan büyüktür");
      break;
    case 3:
      print("sayı 30dan büyüktür");
      break;
    case 2:
      print("sayı 20dan büyüktür");
      break;
    case 1:
      print("sayı 10dan büyüktür");
      break;
    case 0:
      print("sayı 10dan küçüktür");
      break;
    default:
  }
}
