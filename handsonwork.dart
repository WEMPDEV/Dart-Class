//write a dart code that performs multilevel inheritance on a datafield
// containing three laptop wchich are Hp Macbook and Dell with the properties
// colour, model and year of production

class Laptop{
  String color;
  String model;
  int year_of_production;

  Laptop(this.color, this.model, this.year_of_production);

  void displayproperties(){
    print("Color is:$color");
    print("Model is:$model");
    print("Year of Production is:$year_of_production");
  }
}
class HpLaptop extends Laptop {
  HpLaptop(String color, String model, int year_of_production)
      : super(color, model, year_of_production);
}
class Macbook extends Laptop{
  Macbook(String color, String model, int year_of_production)
    :super(color, model, year_of_production);
  }
class Del extends Laptop{
  Del(String color, String model, int year_of_production)
      :super(color, model, year_of_production);
}
void main(){
  var hp = HpLaptop('Silver', 'HP Pavilion', 2022);
  var macbook = Macbook('Space Gray', 'Macbook Pro', 2023);
  var del =Del('Black', 'Dell XPS', 2021);

  print('Details of HP Laptop:');
  hp.displayproperties();

  print('\nDetails of Macbook:');
  macbook.displayproperties();

  print('\nDetails of Dell:');
  del. displayproperties();
}
