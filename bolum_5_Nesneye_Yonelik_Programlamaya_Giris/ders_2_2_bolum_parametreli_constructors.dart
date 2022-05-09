void main(List<String> args) {
  var bmw = Araba(2015, "BMW", true);
  bmw.bilgileriSoyle();
  bmw.yasHesapla();
}

class Araba {
  late int modelYili;
  late String marka;
  late bool otomatikMi;

  // * ilk yazdıklarımız araba sınıfının içindekiler
  // * ikinci yazdıklarımız araba constructorsun içindeki parametreler
  // * burda this anahtar kelimesini tanımlıyoruz karışıklığın önüne geçmek için
  Araba(int modelYili, String marka, bool otomatikMi) {
    print("kurucu method tetiklendi");
    this.modelYili = modelYili;
    this.marka = marka;
    this.otomatikMi = otomatikMi;
  }

  // * this ile kullanmadanda verebiliriz karışıklığın önüne geçmek için paratrelere farkli isimler atamak
  /*
  
   *  Araba(int yil, String m, bool oto) {
   * print("kurucu method tetiklendi");
   * modelYili = yil;
   * marka = m;
   * otomatikMi = oto;
  *}
   */

  // *parametreli kurucu method (constructors)
  // * this ile kullanim
  // * genellikle kullandığımız yol bu olacak
  /*

   * Araba(int this.modelYili, String this.marka, bool this.otomatikMi) {
   * print("this anaktarlı kurucu method tetiklendi");
  *}
   */

  void bilgileriSoyle() {
    print(
        "arabanin modeil yili ${modelYili} markası : ${marka} otomatik mi: ${otomatikMi}");
  }

  void yasHesapla() {
    print("arabanın yaşını hesapla ${2022 - modelYili}");
  }
}
