import 'dart:async';

void main() async {
  stream();
  await for (int num in countStream()) {
    print(num);
  }
}

void stream() {
  final controller = StreamController<String>();
  controller.stream.listen((data) {
    print("Recive $data");
  });
  controller.add("Anurag");
  controller.add("Tiwari");
  controller.close();
}

Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

// void greter() {
//   List ab = [1, 2, 5, 88, 8, 33, 33, 4, 22, 99];
//   var bigger = ab[0];
//   var smaller = ab[0];
//   for(int i =0; )
// }
