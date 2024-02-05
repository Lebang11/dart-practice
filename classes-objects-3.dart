import 'dart:math';

void main() {
  print(Rectangle(20.3, 60.0).area);
  print(Circle(30.0).area);
  print(Square(20.3).area);
}

abstract class Shape {
  double get perimeter;
  double get area;
  String get name;
}

class Circle extends Shape {
  late double radius;

  Circle(this.radius);

  @override
  double get area => pi * (radius * radius);

  @override
  String get name => "I am circle with radius $radius";

  @override
  double get perimeter => radius * 2 * pi;
}

class Rectangle extends Shape {
  late double length, width;

  Rectangle(this.length, this.width);

  @override
  double get area => length * width;

  @override
  String get name => "I am rectangle with length $length and width $width";

  @override
  double get perimeter => 2 * (length + width);
}

class Square extends Rectangle {
  Square(
    double side,
  ) : super(side, side);

  @override
  String get name => "I am square with sides: $length";
}
