import 'dart:io';
import 'dart:async';
import 'dart:core';
void main() async{
//example 2
//print("enter your birth place");
//Srtring? birthlace=readLineSync();
//print("welcome your birht place is $birthplace");
String url= "https://meet.goggle.com/?authuser=0";
// example 2 asnc
File file = await new File(Directory.current.path +"\\Persons.txt");
Future<String> f = file.readAsString();
f.then((emma) {
 print(emma);
}); 
Future<String> getFuture(){
  return Future.error('this is an error');
}
print(getFuture());

// clw
//using the feature delay function create a loop that prints out individual value after 2 seconds
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
    Future.delayed(Duration(seconds: 5*i) , ()  => {print(days)});}
  }
