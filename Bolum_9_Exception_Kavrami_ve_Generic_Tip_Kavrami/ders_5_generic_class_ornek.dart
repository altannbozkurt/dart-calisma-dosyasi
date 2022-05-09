main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("altan");
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(5);
  intMyStack.push(5);

  print(intMyStack.pop());
  print(intMyStack.pop());

  StringMyStack stringMyStack = StringMyStack();
  stringMyStack.push("altan");
  stringMyStack.push("begüm");

  print(stringMyStack.pop());
  print(stringMyStack.pop());
// * tip kontrolu yapabilceğimiz bir sınıf oluşturduk
  GenericStack<String> genericStack = GenericStack();
  genericStack.push("korcan");
  // genericStack.push(5);
  print(genericStack.pop());
}

class MyStack {
  List _listem = [];

  push(yeniEleman) {
    _listem.add(yeniEleman);
  }

  pop() {
    return _listem.removeLast();
  }
}

class IntMyStack {
  List _listem = <int>[];

  push(int yeniEleman) {
    _listem.add(yeniEleman);
  }

  int pop() {
    return _listem.removeLast();
  }
}

class StringMyStack {
  List _listem = <String>[];

  push(String yeniEleman) {
    _listem.add(yeniEleman);
  }

  String pop() {
    return _listem.removeLast();
  }
}

class GenericStack<T> {
  List<T> _listem = <T>[];
  void push(T yeniEleman) {
    _listem.add(yeniEleman);
  }

  T pop() {
    return _listem.removeLast();
  }
}
