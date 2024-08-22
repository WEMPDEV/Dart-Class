/* inheritance
class Parents{
  // properties
  String? surname;
  int? no_family;
  // method 
  void displayparent(){
    print("Surname:${surname}");
    print("Number of Family:${no_family}");
  }
}

class Child extends Parents{
  //feilds
  String? complexion;
  int? aged;
  // method 
  void displaychild() {
    print("Complexion is:${complexion}");
    print("Age is:${aged}");
  }
}

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
void main(){
  Student student=Student();
  student.name="thomas";
  student.age=30;
  student.schoolName = "Aptech Ajah";
  student.schoolAddress = "Sangotedo";
  student.display();
  student.displaySchoolInfo();
  Child child = Child();
  child.no_family=5;
  child.surname="Gbesan";
  child.complexion="Dark- Skinned";
  child.aged=40;
  child.displayparent();
  child.displaychild();
}*/
/* multilevelinheritance
class Vechicle{
  // properties
  String? name;
  double? price;
  String? location;
}
class Benz extends Vechicle{
  // property
  int? year;
  // method
  void displaycar(){
    print("Name of car is : ${name}");
    print("Price of car is: ${price}");
    print("Location:${location}");
    print("Year:${year}");
  }
}
class Model extends Benz{
  //propeeties
  String? color;
  String? grade;
  void display(){
    super.displaycar();
      print("Color of Model is:${color}");
  }
}
void main(){
  Model model=Model();
  model.color="Red";
  model.grade="V-Class";
  model.year=2020;
  model.location="New-york";
  model.name="GLK -350 Benz";
  model.price=10000;
  model.display();
}*/

/*class Shapes {
  // properties
  double? lenght;
  double? breadth;
}
class Triangle extends Shapes{
  double area() {
   return lenght! * breadth! * 0.5;
}
}
class Rectangle extends Shapes{
  double area() {
   return lenght! * breadth!;
}
}
void main(){
  Rectangle rectangle=Rectangle();
  rectangle.lenght=10;
  rectangle.breadth=10;
  print("Area is:${rectangle.area()}");
  Triangle triangle=Triangle();
  triangle.lenght=10;
  triangle.breadth=10;
  print("Area is:${triangle.area()}");

}*/
//write a dart code that performs multilevel inheritance on a datafield
// containing three laptop wchich are Hp Macbook and Dell with the properties
// colour, model and year of production
/*class Laptop{
  // properties
  String? Model;
  String? color;
  int? year;
  //method
  void display(){
    print("Model:$Model");
    print("colo:$color");
    print("Year:$year");
  }
}
class Hp extends Laptop{
  void display(){
    super.display();
  }
}
class MacBook extends Laptop{
  void display(){
    super.display();
  }
}
class Dell extends Laptop{
  void display(){
    super.display();
  }
}
void main(){
  Hp hp =Hp();
  hp.Model="PAVILLION";
  hp.color="red";
  hp.year=2019;
  hp.display();
  MacBook macBook =MacBook();
  macBook.Model="Macbook pro";
  macBook.color="silver grey";
  macBook.year=2024;
  macBook.display();
  Dell dell =Dell();
  dell.Model="PAVILLION";
  dell.color="red";
  dell.year=2018;
  dell.display();
}*/
 /*class Lagos{
  //method
  mainland(){
    print("This is the mainland");
  }
  // method
  island(){
    print("Thi is the island");
  }
}
class Lekki  implements Lagos{
  @override
  island(){
    print("Thi is the island");
  }
  @override
  mainland(){
    print("Thi is the mainland");
  }
}
class Gbagada implements Lagos{
  @override
  mainland(){
    print("Thi is the mainland");
  }
  @override
  island(){
    print("Thi is the island");
  }
}
void main(){
  Lekki lekki = Lekki();
  lekki.island();
  Gbagada gbagada =Gbagada();
  gbagada.mainland();

}*/