void main() {
  
  int x = 10;
  
  double y = 20.5;

  String z = "${x + y}";

  print(add(x, 15));
  print(sub(x, 5));
}

int add(int a, int b) {
  return a + b;
}

int sub(int x, int y) => x - y;