/*
* bazı durumlarda değişmez değerlere ihtiyaç duyabiliriz. bir değer atadıktan sonra bu değerin
* sonradan değiştirilmesini istemiyorsak final ve const anahtar kelimeleri ile değişkenlerimi tanımlarız.

* kullanım ve amaçları aynı olan bu iki kavramın farkı :
* final : değer atandıktan sonra, bellekte yer ayrılması sadece erişilirse olur. final verilerin değerleri değişebilir, veri tipleri değiştirilemez.
* const : bu da aslında final'dir ama derleme anında değer atanır ve bellekte yeri ayrılır, hiç kullanılmasa bile... Veri tipi de içindeki değer de sonradan değiştirilemez. 

* burada veri türü belirtilebilir ama isteğe bağlıdır, yani belirtilmese de olur.

* En önemli fark ise instance değişkenler sadece final olarak tanımlanır, const ile tanımlanamaz.
 *const ile tanımlanması için static const olmalıdır.

 * bellek dostu hızlı çalışmalar yapmak için önemli
 * 
 * final ı runtime da kullanacağız yanı uygulamamız çalışma durumuna gelmişse
 * compiletime ise ekranda çıktıyı görene kadar olan hazırlıklardır. const kullanacağız
 * 
 * değişkenleri tanımlaığımız an compiletime oluyor.
 * 
 * internetten veri gelecekse const kullanılamaz. 
 * const değeri bilinen yapılar için kullanılıyor.

 */
// * IMMUTABLE DEGISMEZ

void main(List<String> args) {
  var str = "altan";
  str = "bozkurt";

  final String str2 = "altan";
  // * str2 = "bozkurt"; bu işlem yapılamıyor final tanımladığımız için değişkene yeni değer atayamıyoruz

  const String str3 = "altan";
  // * str3 = "bozkurt"; aynı şekilde const işlemindede oluyor.

  const sayi = 5;
  final sayi2 = 10; // * böyle kullanabilsekte doğru değil

// * burda çalıştıktan sonra veriyi alacak saati yani
  final tarih = DateTime.now();
// * burda const kullandığımız için bu işlemi yapamıyoruz. çalışmadan önce atamlarda kullanmamız lazım.
  // * const tarih2 = DateTime.now();

  final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];
// * final tanımladığımız zaman listeye eleman atayabiliriz. liste.add diyerek. bellek adresi değişmiyor.
  liste.add(4);

// *  liste = [5, 6]; bu işlemi yapamayız yeniden listeyi tanımlayamayız. çünkü yeniden bir bellek oluşacak o yüzden final kullanırken bunu yapamayız

// * eşit değil çıkacak listelerin içi aynı olsada aslında liste ve liste2yi karşılaştıyoruz bellek adreslerini karşılaştırır.
  if (liste == liste2) {
    print("eşit");
  } else {
    print("eşit değil");
  }
// * canonicalized
  const liste3 = [1, 2];
  const liste4 = [1, 2];
// * burda eşit sonucunu alıyoruz hepsi aslında 1,2 yi gösteriyor isimleri farklıda olsa listelerin hepsi aynı değeri içerdiği için hepsi tek değere odaklanacak.
// * const kullandığımızda hem yeniden değer atayamıyoruz hemde liste.add diyerek ekleme yapamıyoruz yani listeyi hiç bi şekilde değiştiremiyoruz

  if (liste3 == liste4) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}
