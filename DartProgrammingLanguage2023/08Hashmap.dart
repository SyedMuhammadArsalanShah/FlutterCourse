void main() {
  var map_name = {"name": "hassan", "class": "asp", "Class": "C#"};

  print(map_name);

  var names = Map();

  names["name"] = "warisha";
  names["student"] = "flutter";

  print(names);

  print("is empty${map_name.isEmpty}");

  print("isnoempty${map_name.isNotEmpty}");

  print("Keys ${map_name.keys}");

  print("values ${map_name.values}");

  print("Contains Key${map_name.containsKey("name")}");
  print("Contains Value${map_name.containsValue("flutter")}");

  print("length${map_name.length}");

  print("Remove ${map_name.remove("name")}");

  print(map_name);
}
