// A constructor is a special method used to initialize an object.
// It is called automatically when an object is created,
// and it can be used
// to set the initial values for the object’s properties.

// with construstor
// Person person = Person("John", 30);

// without constructor
// Person person = Person();
// person.name = "John";
// person.age = 30;

// example
class Student {
  String? name;
  int? age;
  int? rollNumber;

  // Constructor
  Student(String name, int age, int rollNumber) {
    print(
        "Constructor called"); // this is for checking the constructor is called or not.
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
}

void main() {
  // Here student is object of class Student.
  Student student = Student("John", 20, 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
}
