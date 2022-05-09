/*
 * KURUCU METHODLAR - CONSTRUCTORS
 * 
 * Bir	sınıftan	(	class )	nesne	oluşturmak	için	gerekli	olan	yapıdır.
 * Varsayılan	olarak	biz	oluşturmasakta oluşturulur.
 * Nesne	oluşurken	istenilen	kodlamalar	bu	metod içinde	yapılabilir
 * 
 * Bir sınıftan nesne ürettiğimizde tetiklenen yapılardır. Bu yapıları kullanarak nesnelerimizi veri göndererek oluşturabilir, nesneleri kullanmadan önce gerekli atamaları ve ayarları yapabiliriz.
 
 * Farklı türde kurucu olusturabiliriz.
 *  1-Default : Sınıf adının yanına () dediğimizde çalışan ve de sınıf adıyla aynı olan methoddur.
 *    Ogrenci altan=new Ogrenci() dediğimizde aslında default kurucu çalışır.
 *    Default constructor sınıfın içinde eğer elle yazıp belirtmesek bile olan Ogrenci(){} şeklinde tanımlı boş bir methoddur.
 *    Istersek bunu çeşitli durumlar için kullanabiliriz. Bu method her nesne üretiminde ilk olarak çalışan methoddur.
 *    Kurucu methodların geri dönüş tipi olmaz.

 *  2- Parametreli Kurucu Method : Aslında default constructorın parametre almış haline denir.
 *    Ogrenci altan=new Ogrenci("altan");
 * 
 *  Dart dilinde method overloading olmadığı için sadece ya default yapıcı ya da parametreli yapıcı olmalıdır.
 
 *  3- Named (Isimlendirilmiş) : Sınıf içerisinde 
     SinifAdi.methodAdi(){
     buraya kodlar gelir.
     }
    / Istediniz sayıda isimlendirilmiş kurucu oluşturabilirsiniz. 
 */
void main(List<String> args) {
  var honda = Araba();
  honda.modelYili = 2020;
  honda.marka = "HONDA";
  honda.otomatikMi = true;
  honda.bilgileriSoyle();
  honda.modelYili = 2021;
  honda.bilgileriSoyle();

  var toyota = Araba();
  toyota.modelYili = 2015;
  toyota.marka = "toyota";
  toyota.otomatikMi = false;
  honda.bilgileriSoyle();
}

class Araba {
  late int modelYili;
  late String marka;
  late bool otomatikMi;

  // * kurucu method (constructors)
  // * biz bunu buraya yazmasakta gizlide olsa aslında burda böyle bir yapı vardır
  Araba() {
    print("kurucu method tetiklendi");
  }

  void bilgileriSoyle() {
    print(
        "arabanin modeil yili ${modelYili} markası : ${marka} otomatik mi: ${otomatikMi}");
  }
}
