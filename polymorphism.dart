class ParentClass{
  void SayHi(){}
}

class ChildClass extends ParentClass{
  @override
  void SayHi(){}
}
// EXMPLE 2
class Animal{
  void eat(){
    print("Animal is eating");
  }
}

class Dog extends Animal {
  @override
  void eat(){
    print("Dog is barking");
  }
}
void main(){
  Animal animal = Animal();
  animal.eat();

  Dog dog = Dog();
  dog.eat();


  Human human = Human();
  human.cooking("beans","caprisun");
  Person person = Person();
  person.cooking('rice', 'friutjuice');
}
  class Human{
    void cooking(food, juice){
      print("Human love cooking ${food} long side with ${juice}");
    }
  }

  class Person extends Human{
    @override
    void cooking(rice, fruitjuice){
      print(
        "We all love ${rice} and ${fruitjuice} to go with it.");
      
    }
  }

