void main() {
  int age = 18;

  if (age >= 18) {
    print("you are selected ");
  } else {
    print("you arenot  selected ");
  }

  String name = "Tuaha";
  String email = "t@gamil.com";
  String pass = "1234";

  String emaill = "t@gamil.com";
  String passl = "1234";

  num eng, urdu, math;

  eng = 0;
  urdu = 10;
  math = 30;

  num obtmarks = eng + urdu + math;

  num per = obtmarks / 300 * 100;

  print("Obtained Marks =${obtmarks}");
  print("percentage is${per}%");

  if (per <= 100 && per >= 80) {
    print("Grade A+");
  } else if (per <= 79 && per >= 70) {
    print("Grade A");
  } else if (per <= 69 && per >= 60) {
    print("Grade B");
  } else if (per <= 59 && per >= 50) {
    print("Grade C");
  } else if (per <= 49 && per >= 40) {
    print("Grade D");
  } else {
    print("Grade Fail");
  }
}
