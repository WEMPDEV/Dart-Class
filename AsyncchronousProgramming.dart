import 'dart:io';
import "dart:async";
import 'dart:core';

// Asynchronous Programming is a way of writing code that allows
// a program to do multiple tasks at the same time. Time consuming
// operations like fetching data from the internet, writing to a
// database, reading from a file, and downloading a file
// can be performed without blocking the main thread of execution.

// Synchronous Programming
// In Synchronous programming, the program is executed line by line,
// one at a time. Synchronous operation means a task
// that needs to be solved before proceeding to the next one.

void main() async {
  // example of sync
  print("First Operation");
  print("Second Big Operation");
  print("Third Operation");
  print("Last Operation\n");

//  example of async
  print("First Operation");
  Future.delayed(
    Duration(seconds: 6),
    () => {print("Second operation delayed")},
  );
  print("Third Operation");
  print("Last Operation");

//  example 2 sync
//   print("enter your birth place");
//   String? location = stdin.readLineSync();
//   print("welcome! your birth place is: ${location}");
  String uri = "https://meet.google.com/?authuser=0";
//  example 2 async
//   String combinedData;
//   File file = await new File(Directory.current.path + '\\data.txt');
//   File file2 = await new File(Directory.current.path + '\\data2.txt');
//   Future<String> f = file.readAsString();
//   Future<String> a = file2.readAsString();
//   f.then((Blessed) {
//     a.then((value) {
//      String combinedData = Blessed + value;
//       print(combinedData);
//     });
//   });
  print("end of fetch names");
//
// //  other examples
  Future.delayed(Duration(milliseconds: 1000), () {
    print("this delayed for 1 sec");
  });
//

//   Future<int> getFeat() {
//     return Future.error("error here");
//   }
//
//   getFeat();
}
