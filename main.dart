late Function fun;

void main() {
  // Type declaration => static typed
  int x = 10;

  double y = 20.5;

  String z = "${x + y}";

  //Assigning variables to functions
  fun = add;

  print(fun(x, 15));
  print(sub(x, 5));
}

// Functions
// declare returns and parameters
int add(int a, int b) {
  return a + b;
}

// Arrow function returns on right of arrow
int sub(int x, int y) => x - y;
