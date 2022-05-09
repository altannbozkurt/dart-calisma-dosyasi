/**
 * * num : tamsayı ve ondalıklı bir ifadeyi saklayabilir
 * 
 * * int : tamsayıları saklarken kullanılan veri türüdür
 * ! hexadecimal değerleri de saklayabilir. 0xAABBCC
 * 
 * * double : ondalıklı ifadeler için kullanılan veri türüdür
 * ! exponents değerli saklayabilir, 1.42e5
 * 
 * * var : anahtar kelime ilede tam sayı veya ondalıklı ifade saklanabilir.
 * ! var olarak int deger atandıysa sonrasında double değer atanamaz
 * 
 * ! değişkenlerimize ilk değerleri atamak zorundayız, null değer kabul edilmez.
 * ? null değerlerin kabul edilmesini istiyorsak int?, double? bool? gibi farklı değişken tanımları yapmamız gerekir.
 * 
 * * boolean : true/false değerler alır
 */

void main(List<String> args) {
  
  //* num ile ilgili örnek

  num numaraInt = 100;
  print(numaraInt);

  num numaraDouble = 100.5;
  print(numaraDouble);

  //* int ile ilgili örnek

  int yil = 2022;
  print(yil);

  //* double ile ilgili örnek

  double ondalikSayi = 50.52;
  print(ondalikSayi);

  //* boolen ile ilgili örnek

  bool dogrumu = true;
  print(dogrumu);

  bool yanlis = false;
  print(yanlis);

}