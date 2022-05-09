/*
 * Closure özel bir fonksiyondur, closure ile bir üst kapsamdaki değişkenlerin değerlerini değiştirebiliriz. 
 */
// * lexical veriable scope

// * azda kullansak kullanımını öğrenmek önemli
void main(List<String> args) {
  var mainDegiskeni = 1;

  void a() {
    var aDegiskeni = 2;

    void b() {
      var bDegiskeni = 3;
      print(aDegiskeni);
      print(mainDegiskeni);
    }
  }

  var d = topla(10);
  var sonuc = d(5);
  print(sonuc);

  var dondurulenFonksiyon = topla(5);
  var sonuc2 = dondurulenFonksiyon(4);
  print(sonuc2);
}

Function topla(int eleman) {
  return (int deger) => eleman * deger;
}
