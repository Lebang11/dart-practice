import 'dart:async';

void main() async {
  print("This is Synchronous");
  print("Everything is executing in sync");
  // read a file or access the internet
  await future().then((value) => print(value));
  scheduleMicrotask(() => print("This is a microtask."));
  await event1().then((value) => print(value));
  await event2().then((value) => print(value));

  print("now the program ends");
}

future() async {
  Completer completer = Completer();

  Future.delayed(Duration(seconds: 2), () {
    completer.complete("delayed call");
  });

  return completer.future;
}

Future<String> event1() async {
  return Future.value("This is a future event");
}

Future<String> event2() async {
  return Future.value("This is another future event");
}
