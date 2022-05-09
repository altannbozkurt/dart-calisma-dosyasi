/*
 * Soru
 * Bir fonksiyon yazın bu fonksiyon aldıgı id parametresine göre bir kullanıcı getirsin. Bu işlem 2 saniye sonunda sonuclanacaktır ve getirilen kişi bilgisi map olarak alınacaktır. Bu map yapısında username ve id bilgisi olması yeterlidir.
 * 
 * getirilen kişi bilgisindeki username değerini kullanarak kişinin kurslarını getiren bir fonksiyon yazın. Bu fonksiyon 4 saniye sürecektir ve username değerine ait olan kursları içinde kursun adları olan bir liste olarak döndürecektir.
 * 
 * 
 * Son olarak da kurslar listesindeki ilk elemanı parametre olarak alan ve bu kursa ait bir yorumu döndüren bir fonksiyon yazın,. Bu fonksiyon 1 saniye sürecektir. 
 */

void main(List<String> args) {
  idyeGoreUserGetir(5).then((Map value) {
    print(value);
    userNameGoreKurslariGetir(value['username']).then((List value) {
      String ilkKurs = value[0];
      yorumlariGetir(ilkKurs).then((value) => print(value));
      for (var listeyiGetir in value) {
        print("$listeyiGetir");
      }
    });
  });
}

Future<List<String>> userNameGoreKurslariGetir(String username) {
  print("$username kullanıcısının kursları getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['flutter', 'kotlin', 'javascript'];
  });
}

Future<Map> idyeGoreUserGetir(int id) {
  print("$id idli kullanıcı getiriliyor");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {"username": "altannbozkurt", "id": id};
  });
}

Future<String> yorumlariGetir(String kursAdi) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "kurs mükemmel";
  });
}
