void main() {
  // List declared with var
  var myList = [1, 2, 3];
  print(myList);
  print(myList[0]);

  // Replace element
  myList[0] = 41;
  print(myList);

  var emptyList = [];
  print(emptyList);

  // adding element
  emptyList.add(51);
  print(emptyList);

  // Adding multiple elements in list
  emptyList.addAll([1, 2, 3, 4]);
  print(emptyList);

  // Inserting 60 at index 1
  myList.insert(1, 60);
  print(myList);

  // Inserting multiple elements at index 1
  myList.insertAll(1, [15, 17, 86]);
  print(myList);

  var mixedList = [1, 2, 3, "John", "Bob"];
  print(mixedList);

  // Removing elements
  mixedList.remove("John");
  print(mixedList);

  // Removing indexes, works like pop
  mixedList.removeAt(2);
  print(mixedList);

  // List length
  print(mixedList.length);

  // forEach method
  myList.forEach((element) {
    print(element);
  });

  // can also use map
  myList.map((e) => print(e));
}
