// Parent Class: The class whose properties and methods
// are inherited by another class is called parent class.
// It is also known as base class or super class.
//
// Child Class: The class that inherits the properties
// and methods of another class is called child class.
// It is also known as derived class or sub class.

class Person {
  // Properties
  String? name;
  int? age;

  // Method
  void display() {
    print("Name: $name");
    print("Age: $age");
  }
}

class Student extends Person {
  // Fields
  String? schoolName;
  String? schoolAddress;

  // Method
  void displaySchoolInfo() {
    print("School Name: $schoolName");
    print("School Address: $schoolAddress");
  }
}

void main() {
  // Creating an object of the Student class
  Student student = Student();
  student.name = "John";
  student.age = 20;
  student.schoolName = "Aptech Ajah";
  student.schoolAddress = "Sangotedo";
  student.display();
  student.displaySchoolInfo();

  canivour can = canivour();
  print(can.Tiger = "i am scared of canivorius animals");
}

class animals {
  String? Tiger;
}

class canivour extends animals {}

// Types Of Inheritance In Dart
// Single Inheritance
// Multilevel Inheritance
// Hierarchical Inheritance
// Multiple Inheritance :: not supported in dart
