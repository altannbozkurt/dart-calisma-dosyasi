import 'dart:io';

void main(List<String> args) {
  String secim = "";
  int s1 = 0;
  int s2 = 0;

  do {
    print(
        "toplama için 1e\nçıkarma için 2ye\nçarpma için 3e\nbölme için 4e basınız\nçıkış için 5e\nsecim yapınız:");
    secim = stdin.readLineSync()!;
    print("birinci sayiyi giriniz:");
    if (secim != "5") {
      s1 = int.parse(stdin.readLineSync()!);
      print("ikinci sayiyi giriniz:");
      s2 = int.parse(stdin.readLineSync()!);
    }

    switch (secim) {
      case "1":
        print("toplama sonucu ${s1 + s2}");
        break;

      case "2":
        print("çıkarma sonucu ${s1 - s2}");
        break;

      case "3":
        print("çarpma sonucu ${s1 * s2}");
        break;

      case "4":
        print("bölme ${s1 / s2}");
        break;

      case "5":
        print("çıkış");
        break;
      default:
        {
          print("geçerli bir secim yapınız");
        }
    }
  } while (secim != "5");
  print("uygulamadan çıkıldı");
}
