void main() {
  var list = ["Tuaha", "Warisha", "Ainna", "Affan", "Afnan"];

  print(list);

 //   list.add("Ali");

 //    print(list);

  var names = [];
  names.add("Sara");
  names.add("kuch bhi");
  names.add("anas");
  names.add("atif");

  names.addAll(list);

  print("names, $names");

//   list.insert(1,"Junaid");
//    print(list);

  var staff = ["ali", "zahid", "zaid"];

//   list.insertAll(0,staff);

//     print(list);

  names[1] = "Ibrahim";

  print("updates names, $names");

  names.replaceRange(1, 4, [1, 0, 3]);

  print("replace names, $names");

  names.remove("Ainna");
  print("remove , $names");

  names.removeLast();
  print("remove last, $names");

  names.remove("Ainna");
  print("remove , $names");

  names.removeAt(1);
  print("remove at, $names");

  names.removeRange(1, 3);
  print("remove range, $names");

  print("length ${names.length}");

  print("length ${names.reversed}");
  print("first ${names.first}");
  print("last ${names.last}");
  print("isempty ${names.isEmpty}");
  print("is not empty ${names.isNotEmpty}");
}
