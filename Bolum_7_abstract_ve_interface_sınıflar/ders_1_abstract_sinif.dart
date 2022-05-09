/*
 * Abstract soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır.
 * Abstract sınıflardan nesne üretilemez , abstract sınıflarda normal ve abstract methodlar olur
 * abstract methodlar alt sınıflarca override edilmek zorundadır.
 * 
 * Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstract tanımlanmalıdır.
 * Abstract bir sınıf tanımlamanın bize avantajları:
 * bir veritabanı ile çalışmaya karar vermedik diyelim. bu oracle olabilir firebase olabilir vs.
 * ya da oracle kullanıyorduk firabese geçmeye karar verdik.
 * böylece daha az kod yazarak küçük değişikliklerle yapımızı taşıyabileceğiz.
 * zaten biz tanımladığımız abstract sınıfından kalıtımla kullanacağımız veritabanına yazdıracağız.
 * böylece yapımızı rahat bir şekilde çekebileceğiz.
 */

void main(List<String> args) {
  Veritabani db = OracleDb();
  db.userDelete();
  db.userSave();

  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();
}

abstract class Veritabani {
  void userSave();
  void userUpdate();
  void userDelete();
}

class OracleDb extends Veritabani {
  @override
  void userDelete() {
    print("oracleDBden user silindi");
  }

  @override
  void userSave() {
    print("oracleDBe user kaydedildi");
  }

  @override
  void userUpdate() {
    print("oracleDBdeki user güncellendi");
  }
}

class FireBaseDB extends Veritabani {
  @override
  void userDelete() {
    print("FirabaseDB user silindi");
  }

  @override
  void userSave() {
    print("FireBaseDB user kaydedildi");
  }

  @override
  void userUpdate() {
    print("FireBaseDB user güncellendi");
  }
}
