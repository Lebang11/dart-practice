void main() {
  var n1 = Complex(3, -2);
  var n2 = Complex(1, 4);
  var n3 = Quaternion(1, -2, 3);

  print(n1 + n2);
  print(n1.multiply(n2));
  print(Complex.subtract(n1, n2));
  print(Complex.counter);
  print(Quaternion(1, 2, 3));
  print(n3 + n2);
}

class Complex {
  final num _real;
  final num _imaginary;
  static num counter = 0;

  Complex(this._real, this._imaginary) {
    counter++;
  }

  Complex.real(num real) : this(real, 0);
  Complex.imaginary(num imaginary) : this(0, imaginary);

//   num getReal() {
//     return _real;
//   }

//   num getImaginary() {
//     return _imaginary;
//   }

  num get real => _real;
  // set real(num value) => _real = value;

  num get imaginary => _imaginary;
  // set imaginary(num value) => _imaginary = value;

  Complex operator +(Complex c) {
    return Complex(this._real + c._real, this._imaginary + c._imaginary);
  }

  Complex multiply(Complex c) {
    var first = this.real * c.real;
    var inner = this.imaginary * c.real;
    var outer = this.real * c.imaginary;
    var last = -(this.imaginary * c.imaginary);

    return Complex(first + last, inner + outer);
  }

  static Complex subtract(Complex c1, Complex c2) {
    return Complex(c1.real - c2.real, c1.imaginary - c2.imaginary);
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
    return '${real} - ${-imaginary}i';
  }
}

//Quarternion
// u + vi + xj
// i = j = sqrt(-1)

class Quaternion extends Complex {
  num jImage;

  Quaternion(
    num real,
    num imaginary,
    this.jImage,
  ) : super(real, imaginary);

  @override
  String toString() {
    if (this.jImage >= 0 && this._imaginary >= 0) {
      return '${this._real} + ${this._imaginary}i + ${this.jImage}';
    }
    if (this.jImage >= 0 && this._imaginary < 0) {
      return '${this._real} - ${this._imaginary}i + ${this.jImage}';
    }
    return '${this._real} - ${this._imaginary}i - ${this.jImage}';
  }
}
