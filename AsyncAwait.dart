import 'dart:async';

void main() async {
  demo() async {
    print("good morning");
  }

  await demo();
  print("have a great day");
}
