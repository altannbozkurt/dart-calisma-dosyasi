void main(List<String> args) async {
  Map<String, dynamic> gelenUser = await idyeGoreUserGetir(6);
  List<String> kurslarListesi =
      await userNameGoreKurslariGetir(gelenUser['username']);
  print(kurslarListesi);
  String yorum = await yorumlariGetir(kurslarListesi[0]);
  print(yorum);
}

Future<List<String>> userNameGoreKurslariGetir(String username) {
  print("$username kullanıcısının kursları getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['flutter', 'kotlin', 'javascript'];
  });
}

Future<Map<String, dynamic>> idyeGoreUserGetir(int id) {
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
