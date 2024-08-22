import 'dart:collection';

void main() {
  Set Numbers = new HashSet();
  Numbers.add("10");
  Numbers.add("data");
  Numbers.add("yemi");
  print(" this is my Linkedhashset numbers: ${Numbers}");

  // Map UserBio = new HashMap();
  // UserBio['name'] = "Al-ameen";
  // UserBio['age'] = 20;
  // UserBio['occupation'] = "Mobile Dev";
  // print(UserBio);

  //linkedHashMap
  var a = new LinkedHashMap();
  a["name"] = "Lion";
  a["job"] = "Eating";

  print(a);

// linkedHashSet

  var b = new LinkedHashSet();
  b.add("walking");
  b.add("sweeping");
  b.add("running");
  b.add("jumping");
  print(b);

  // nested collection
  List lists = List.generate(
      2, (_) => List.generate(3, (_) => ['NAME', "AGE", "GENDER"]));
  print(lists);

  List data = List.generate(1,
      (_) => List.generate(3, (_) => List.generate(4, (_) => ["hi", "hello"])));
  print(data);
  // collection-if and collection-for
  var collect = [20, 30, 50, 20];
  collect.add(60);

  for (var i in collect) {
    print(" data: ${i}");
  }
  if (collect[0] == collect[3]) {
    collect[0] = collect[0] + 20;
    print("check condition: ${collect[0]}");
  }
}
