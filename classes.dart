void main() {
  Complex comp = Complex(5, 6);
  comp.getNum1();
  print(comp.num2);

  comp.num2 = 10;
  print(comp.num2);
}

// Imaginary numbers 3 + 2i
class Complex {
  late int _num1;
  late int _num2;

  Complex(int this._num1, int this._num2);

  void getNum1() {
    print(this._num1);
  }

  int get num2 => _num2;

  set num2(int value) => _num2 = value;
}
