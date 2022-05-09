class Musteri {
  int? _musteriNo;

  // Musteri(this._musteriNo) {}
// * default constructors
  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo);
  }

  // * bu işlem setter gibi bir işlem fakat setterin daha farkı bir yazımı var
  // * 1 işlem
  void _musteriNoKontrol(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

// * aynı işlemi setter la yapalım
  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  // * getter yaparken geriye ne değer döndürecek ona bakacağız
  String get musteriNoSoyle {
    return "Musteri no :${_musteriNo}";
  }

  void bilgileriYazdir() {
    print("müsteri oluşturuldu musteri no: ${_musteriNo}");
  }
}
