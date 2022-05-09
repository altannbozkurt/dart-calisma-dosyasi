/*
 * Dart dilinde interface kavramı yoktur, ama sınıfları implements anahtar kelimesi ile interfacemiş gibi kullanabiliriz.
 * Interfaceler sayesinde ortak ozelliği olan ancak kalıtımsal olarak alakalı olmayan sınıfları bir çatı altında toplayabiliriz.
 * 
 * Interface olarak kullanılan sınıfların methodları bu sınıfları implemente eden sınıflar tarafından yapılmak zorundadır.
 * Interfaceler sayesinde dart dilinde olmayan çoklu kalıtım saglanabilir. Bir sınıf birden fazla sınıfı implements diyerek gerçekleştirebilir.
 * 
 * Class yapısında kullanılabilir.
 * Bir sınıf birden fazla	interface alabilir.
 * implements ile	eklenirler.
 * Hazır taslaklar gibi	düşünebilirsiniz.
 * Interface’ler sınıflara özellik	katar.
 */

void main(List<String> args) {}

abstract class Hayvan {
  void soyutOlmayanMetot() {
    print("metodun tanımı");
  }
}

abstract class Ucabilenler {
  void fly();
  void test() {
    print("test");
  }
}

abstract class Haylayabilenler {
  void bark();
}

abstract class Kosabilenler {
  void run();
}

class Kopek extends Hayvan implements Haylayabilenler, Kosabilenler {
  @override
  void bark() {}

  @override
  void run() {}
}

class Kus extends Hayvan implements Ucabilenler {
  @override
  void fly() {}

  @override
  void test() {}
}

class Insan implements Kosabilenler {
  @override
  void run() {}
}
