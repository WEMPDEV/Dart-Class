import 'dart:collection';

// List
void main() {
  // fixed length list
  var list = List<int>.filled(5, 0);
  list[0] = 1;
  list[1] = 13;
  list[2] = 15;
  list[3] = 17;
  list[4] = 19;

  print('Fixed Length: ${list}');

  // growable length list
  var list1 = [210, 21, 22, 33, 44, 55];
  print('Growable Length: ${list1}');
  list1.addAll([45, 56, 78, 453, 23, 2342, 4]);
  print('Growable Length update: ${list1}');

//  set
  Set s = new Set();
  s.add('Gauva');
  s.addAll(['Pineapples', 'waterMelon']);
  // alternative
  Set<String> fruits = {"Apple", "Orange", "Mango", "Banana"};

  // using different properties of Set
  print(fruits);
  print("First Value is ${fruits.first}");
  print("Last Value is ${fruits.last}");
  print("Is fruits empty? ${fruits.isEmpty}");
  print("Is fruits not empty? ${fruits.isNotEmpty}");
  print("The length of fruits is ${fruits.length}");
  Set<String> days = {"Sunday", "Monday", "Tuesday"};
  // index starts from 0 so 2 means Tuesday
  print(days.elementAt(2));

  Set<String> fruits1 = {"Apple", "Orange", "Mango", 'Apple'};
  print(fruits1);
  Set<String> fruits2 = {"Apple", "Grapes", "Banana"};

  final differenceSet = fruits1.difference(fruits2);
  print(differenceSet);

  Set<String> manyfruits = {"Apple", "Orange", "Mango"};
  print(manyfruits.containsAll(["Mango", "Pear"]));
  print(manyfruits.contains("Orange"));

  Set<String> fruits12 = {"Apple", "Orange", "Mango"};
  Set<String> fruits22 = {"Apple", "Grapes", "Banana"};

  final intersectionSet = fruits12.intersection(fruits22);
  print(intersectionSet);

//  maps

  Map<String, String> countryCapital = {
    'USA': 'Washington, D.C.',
    'India': 'New Delhi',
    'China': 'Beijing'
  };

  print(countryCapital);
  print(countryCapital["USA"]);
  print(countryCapital['India']);
  // Adding New Item
  countryCapital['Japan'] = 'Tokio';
  print(countryCapital);
  countryCapital['Nigeria'] = "Abuja";
  // Updating Item
  countryCapital['USA'] = 'Washington';
  print(countryCapital);

  countryCapital.remove('USA');
  print(countryCapital);

//  converting maps key and values to list
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  // Without List
  print("All keys of Map: ${expenses.keys}");
  print("All values of Map: ${expenses.values}");

  // With List
  print("All keys of Map with List: ${expenses.keys.toList()}");
  print("All values of Map with List: ${expenses.values.toList()}");

//  other methods for map:

  print("All keys of Map: ${expenses.keys}");
  print("All values of Map: ${expenses.values}");
  print("Is Map empty: ${expenses.isEmpty}");
  print("Is Map not empty: ${expenses.isNotEmpty}");
  print("Length of map is: ${expenses.length}");

//loop through a map
  Map<String, dynamic> book = {
    'title': 'Mission Mangal',
    'author': 'Kumar Singh',
    'page': 233
  };

// Loop Through For Each
  book.forEach((String key, dynamic value) {
    print('Key is $key and value is $value');
  });
  // Loop Through Map
  for (MapEntry book in book.entries) {
    print('Key is ${book.key}, value ${book.value}');
  }

  // difference between hashset and set
  Set mySet1 = new Set();
  Set anotherSet = new HashSet();
  //alternatively
  Set<int> mySet = {1, 2, 3};
  HashSet<int> myHashSet =
      HashSet.from([1, 2, 3]); // faster and more It is more efficient
  // for membership tests (contains)
  // uses a hash table for faster key lookup
  HashSet<int> Cars = HashSet.from([1, 2, 3]);
  HashSet<double> age = HashSet.from([2.7, 56.8, 70.89]);

  // difference between hashmap and map
  Map boys = new Map();
  Map girls = new HashMap();
  girls[1] = 'Kate';
  boys["zero"] = 'Eugene';
  //alternatively
  Map<String, int> myMap = {'one': 1, 'two': 2, 'three': 3};
  HashMap<String, int> myHashMap =
      HashMap.from({'one': 1, 'two': 2, 'three': 3});
  // It is generally more efficient for operations
  // like containsKey, remove, and []
  // access for large datasets.
  // uses a hash table for faster key lookup
  print(myHashMap.keys);
}
