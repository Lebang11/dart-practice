void main() {
  // jsons or maps
  var toppings = {"John": "Pepperoni", "Mary": "Cheese"};
  print(toppings);
  print(toppings["John"]);

  // Prints keys
  print(toppings.keys);

  // Prints values
  print(toppings.values);

  // Prints length
  print(toppings.length);

  // Adds Tim to map
  toppings["Tim"] = "Sausage";
  print(toppings);

  // Adds multiple keys and values
  toppings.addAll({"Tina": "Bacon", "Steve": "Supreme"});
  print(toppings);

  // Removes from map
  toppings.remove("Steve");
  print(toppings);

  // Using map for maps
  // Use MapEntry so it can return MapEntry function
  var myMap = toppings.map((key, value) => MapEntry(key.toUpperCase(), value));
  print(myMap);

  // Clears map
  toppings.clear();
  print(toppings);
}
