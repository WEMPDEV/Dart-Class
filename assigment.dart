//write a dart code that performs multilevel inheritance on a datafield
// containing three laptop wchich are Hp Macbook and Dell with the properties
// colour, model and year of production

class Laptop {
  String color;
  String model;
  int yearOfProduction;
  
  Laptop(this.color, this.model, this.yearOfProduction);
  
  void displayDetails() {
    print('Model: $model');
    print('Color: $color');
    print('Year of Production: $yearOfProduction');
  }
}

class HpLaptop extends Laptop {
  HpLaptop(String color, String model, int yearOfProduction) 
    : super(color, model, yearOfProduction);
  
  void hpSpecificFunction() {
    print('HP specific function.');
  }
}

class Macbook extends Laptop {
  Macbook(String color, String model, int yearOfProduction) 
    : super(color, model, yearOfProduction);
  
  void macbookSpecificFunction() {
    print('Macbook specific function.');
  }
}

class DellLaptop extends Laptop {
  DellLaptop(String color, String model, int yearOfProduction) 
    : super(color, model, yearOfProduction);
  
  void dellSpecificFunction() {
    print('Dell specific function.');
  }
}

void main() {
  var hp = HpLaptop('Silver', 'HP Pavilion', 2022);
  var macbook = Macbook('Space Gray', 'Macbook Pro', 2023);
  var dell = DellLaptop('Black', 'Dell XPS', 2021);
  
  print('Details of HP Laptop:');
  hp.displayDetails();
  hp.hpSpecificFunction();
  
  print('\nDetails of Macbook:');
  macbook.displayDetails();
  macbook.macbookSpecificFunction();
  
  print('\nDetails of Dell Laptop:');
  dell.displayDetails();
  dell.dellSpecificFunction();
}
