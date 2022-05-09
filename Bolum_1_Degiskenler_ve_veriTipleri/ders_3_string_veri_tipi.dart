/**
 * * String : Metinsel ifadeler için kullanılan veri türüdür. 
 * * String ifadaler çift tırnak veya tek tırnak ile kullanılabilir.
 * * İki String ifadeyi birleştirmek için + operatörü kullanılır.
 * * Birden fazla satur süren metinsel ifadeleri birleştiririrken + operatörü kullanmasak da olur.
 * * 'ifade 1'
 * * 'ifade 2' olarak kullanılablir.
 * * 
 * * Interpolation : String ifade içinde başka bir string ifadeyi $ifade olarak kullanabilir. Böylece + operatörü kullanmak gerekmez.
 * * Eğer ifade birden fazla alana sahipse ${ifade.method} şeklinde kullanılır.
 * * Ayrıca interpolation diğer veri türleri içinde geçerlidir.
 */

void main(List<String> args) {
  String isim = "altan";
  print(isim);

  String soyad = 'bozkurt';
  print(soyad);

  print("adım :" " " + isim + " " + "soyadım :" + " " + soyad);

  print("adım : $isim soyadım: $soyad");

  print(
      "adımdaki ve soyadımdaki karakter sayısı ${isim.length + soyad.length}");
}
