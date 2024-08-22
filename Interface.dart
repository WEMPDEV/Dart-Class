// An interface defines a syntax that a class must follow.
// It is a contract that defines the capabilities of a class.

class InterfaceName {
  // code
}

class ClassName implements InterfaceName {
  // code
}

// declaring interface
// creating an interface using abstract class
abstract class Person {
  canWalk();
  canRun();
}

// implementing interface
class Student implements Person {
  // implementation of canWalk()
  @override
  canWalk() {
    print('Student can walk');
  }

// implementation of canRun()
  @override
  canRun() {
    print('Student can run');
  }
}

// example 2

// creating an interface using concrete class
 class Laptop {
  // method
  turnOn() {
    print('Laptop turned on');
  }

  // method
  turnOff() {
    print('Laptop turned off');
  }
}

class MacBook implements Laptop {
  // implementation of turnOn()
  @override
  turnOn() {
    print('MacBook turned on');
  }

  // implementation of turnOff()
  @override
  turnOff() {
    print('MacBook turned off');
  }
}

void main() {
  Student student = Student();
  student.canRun();
  student.canWalk();
  var macBook = MacBook();
  macBook.turnOn();
  macBook.turnOff();
  var laptop = Laptop();
  laptop.turnOn();
  laptop.turnOff();
}
