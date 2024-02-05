void main() {
  var myList = [1, 2, 3];
  print(myList);
  print(myList[0]);

  myList[0] = 41;
  print(myList);

  var emptyList = [];
  print(emptyList);

  emptyList.add(51);
  print(emptyList);

  emptyList.addAll([1, 2, 3, 4]);
  print(emptyList);

  myList.insert(1, 60);
  print(myList);

  myList.insertAll(1, [15, 17, 86]);
  print(myList);

  var mixedList = [1, 2, 3, "John", "Bob"];
  print(mixedList);

  mixedList.remove("John");
  print(mixedList);

  mixedList.removeAt(2);
  print(mixedList);

  print(mixedList.length);

//   myList.forEach((element) {
//     print(element);
//   });

  myList.map((e) => print(e));
}
