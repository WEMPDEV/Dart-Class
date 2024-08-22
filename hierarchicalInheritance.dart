// Hierarchical Inheritance - In this type
// of inheritance, parent class is inherited by multiple subclasses.

class Shape {
  // Properties
  double? diameter1;
  double? diameter2;
} 

class Rectangle extends Shape {
  // Method to calculate the area of the rectangle
  double area() {
    return diameter1! * diameter2!;
  }
}

class Triangle extends Shape {
  // Method to calculate the area of the triangle
  double area() {
    return 0.5 * diameter1! * diameter2!;
  }
}

void main() {
  // Create an object of Rectangle class
  Rectangle r = new Rectangle();
  // setting values to the object
  r.diameter1 = 10.0;
  r.diameter2 = 20.0;
  // Display the area of the rectangle
  print("Area of the rectangle: ${r.area()}");

  // Create an object of Triangle class
  Triangle t = new Triangle();
  // setting values to the object
  t.diameter1 = 10.0;
  t.diameter2 = 20.0;
  // Display the area of the triangle
  print("Area of the triangle: ${t.area()}");

  derivedClass1 deri1 = derivedClass1();
  print(deri1.location = "Paris");
  derivedClass2 deri2 = derivedClass2();
  print(deri2.location = "Lagos");
}

class baseClass {
  String? location;
}

class derivedClass1 extends baseClass {}

class derivedClass2 extends baseClass {}
// Note::
// Multiple Inheritance - In this type of inheritance, a class
// can inherit from multiple classes. Dart does not support multiple
// inheritance. For
// e.g. Class Toyota extends Car, Vehicle {} is not allowed in Dart.
