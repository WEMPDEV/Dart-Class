import "dart:core";
import "dart:io";
import "dart:async";
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
  // example of ansync
  print("first operation");
  print("second operation");
  print("third operation");
  Future.delayed(Duration(seconds: 2 ), () => {print("fourth operation")});
  // example of sync
  /*stdout.write("Enter the operaton");
  String? Operation1 = stdin.readLineSync();
  print("1st operation is:$Operation1");*/

  // example 1
  String url= "https://meet.goggle.com/?authuser=0";// what is the use of this code
  File document = await new File(Directory.current.path +"//data.txt");
  Future <String> d =document.readAsString();
  d.then((value) => print(value));
  //  example 2 async
  // String combinedData; create data2.txt and combine thier values together and print them out once

  File files = await new File(Directory.current.path +"//data2.txt");
  Future <String> f =files.readAsString();
  d.then((value){
     f.then((valued){
      String combinedData = value + valued;
      print("The combined data is:${combinedData}");
  });
    });
    print("end of fetch names");

  Future.delayed(Duration(milliseconds: 1000), () {
    print("this delayed for 1 sec");
  });

  //using the feature delay function create a loop that prints out individual value after 2 second

   displayDays();
  }
  void displayDays(){

  List<dynamic> days =
   ['MONDAY',
  'TUESDAY',
  'WEDNESDAY',
  'TURSDAY',
  'FRIDAY'];
  for (int i= 0; i < days.length;i++){
    Future.delayed(Duration(seconds: 2*i) , ()  => {print(days[i])});}
  }

