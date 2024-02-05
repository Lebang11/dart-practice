void main() {
  var toppings = {"John": "Pepperoni", "Mary": "Cheese"};
  print(toppings);
  print(toppings["John"]);

  print(toppings.keys);
  print(toppings.values);
  print(toppings.length);

  toppings["Tim"] = "Sausage";
  print(toppings);

  toppings.addAll({"Tina": "Bacon", "Steve": "Supreme"});
  print(toppings);

  toppings.remove("Steve");
  print(toppings);

  var myMap = toppings.map((key, value) => MapEntry(key.toUpperCase(), value));
  print(myMap);
  toppings.clear();
  print(toppings);
}
