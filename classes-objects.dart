void main() {
  // var c = Complex(2, 5);
  // c.imaginary = 2;
  // c.real = 5;

  // var c2 = Complex(3, 7)
  //   ..imaginary = 3
  //   ..real = 7;

  var r = Complex.real(5);
  print("r is ${r.toString()}");

  var i = Complex.imaginary(5);
  print("i is ${i.toString()}");

//   print("${c.real} + ${c.imaginary}i");
  // print(c.toString());

  // c2.real = 20;
  // print(c2.real);
}

class Complex {
  late num _real;
  late num _imaginary;

  Complex(this._real, this._imaginary);

  Complex.real(num real) : this(real, 0);
  Complex.imaginary(num imaginary) : this(0, imaginary);

//   num getReal() {
//     return _real;
//   }

//   num getImaginary() {
//     return _imaginary;
//   }

  num get real => _real;
  set real(num value) => _real = value;

  num get imaginary => _imaginary;
  set imaginary(num value) => imaginary = value;

  void setReal(num real) {
    this.real = real;
  }

  void setImaginary(num imaginary) {
    this.imaginary = imaginary;
  }

  @override
  bool operator ==(other) {
    if (!(other is Complex)) {
      return false;
    }
    return this._real == other._real && this._imaginary == other._imaginary;
  }

  @override
  String toString() {
    if (imaginary >= 0) {
      return '${real} + ${imaginary}i';
    }
    return '${real} - ${imaginary}i';
  }
}
