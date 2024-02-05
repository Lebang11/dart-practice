void main() {
  var c = Complex(2, 5);
  c.imaginary = 2;
  c.real = 5;

  var c2 = Complex(3, 7)
    ..imaginary = 3
    ..real = 7;

//   print("${c.real} + ${c.imaginary}i");
  print(c.toString());

  c2.set_real = 20;
  print(c2.get_real);
}

class Complex {
  late num real;
  late num imaginary;

  late num _real;
  late num _imaginary;

  Complex(this._real, this._imaginary);

//   num getReal() {
//     return _real;
//   }

//   num getImaginary() {
//     return _imaginary;
//   }

  get get_real => _real;
  set set_real(num value) => _real = value;

  get get_imaginary => _imaginary;
  set set_imaginary(num value) => _imaginary = value;

  void setReal(num real) {
    this._real = real;
  }

  void setImaginary(num imaginary) {
    this._imaginary = imaginary;
  }

  @override
  String toString() {
    if (imaginary >= 0) {
      return '${real} + ${imaginary}i';
    }
    return '${real} - ${imaginary}i';
  }
}
