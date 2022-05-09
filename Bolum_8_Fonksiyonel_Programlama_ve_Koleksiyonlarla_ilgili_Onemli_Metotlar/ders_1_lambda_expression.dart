// * Lambda : ismi olmayan fonksiyonlardır. Dartta her fonksiyon aslında bir nesnedir.

// * closure diyince aklıma fonksiyon gelebilir.

// * lambda olarak tanımladığımız fonksiyonları parametre olarak geçebiliriz.

void main(List<String> args) {
  Function fonksiyon1 = (int a, int b) {
    int toplam = a + b;
    print(toplam);
  };

  fonksiyon1(10, 20);

  Function f2 = (int s) => s * 2;
  int sayi = f2(5);
  print(sayi);
}

// * Normal bir fonksiyon
void sayilariTopla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}
