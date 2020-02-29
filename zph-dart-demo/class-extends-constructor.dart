void main() {
 var p = new Student('T', '二年级');
 print(p.name);
 print(p.grade);
}

class Student extends Person{
  final String grade;
  Student(String name, String g) : grade = g, super.widthName(name);
 }

class Person{
  String name;
  Person(this.name);
  Person.widthName(this.name);
}


