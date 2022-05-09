// * immutable sınıflarda kullanımı

// * farklı farklı kullanımlar var

void main(List<String> args) {
  const Student altan = Student(10, "altan");
  // *  altan.id = 20; final atadığımız için daha sonrasında burdaki veri değiştirilemiyor. güvenlik ve daha verimli çalışma için önemli. Zaten biz bi değer atadığımızda onun değişmesini istemeyiz.

  final Student altan2 = const Student(10, "altan");

  var altan3 = const Student(10, "altan");
  altan3 = const Student(10, "altan");
  //

  if (altan == altan3) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}

class Student {
  final int id;
  final String isim;

  const Student(this.id, this.isim);
}
