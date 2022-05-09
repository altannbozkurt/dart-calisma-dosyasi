/*
 * Higher order Functions : bir fonksiyonu parametre olarak alan veya geriye fonksiyon döndüren fonksiyonlardır.
 * tabi ikisi aynı anda da yapılabilir
 *  
 */

void main(List<String> args) {
  List<int> liste = [1, 2, 3];

/*
    liste.forEach((element) {
    print("element: $element");
  });
 */
  liste.forEach(callback);
  kendiForEachYapim(liste, (int deger, int index) {
    print("değer : $deger ,index: $index");
  });
}

// * kendi foreach yapımızı yapalım
void kendiForEachYapim(List<int> liste, Function callback) {
  for (var i = 0; i < liste.length; i++) {
    //print("eleman : ${liste[i]}");
    callback(liste[i], i);
  }
}

// *
void callback(int element) {
  print("element: $element");
}
