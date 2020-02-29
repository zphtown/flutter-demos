void main() {
  var p = new Student();
  p.name = 'Tom';
  p.age = 20;
  p.study();
  p.run();
  print(p.isAudlt);
  print(p);
}

class Student extends Person{
  String name;
  int age;

  @override
  bool get isAudlt => age > 20;
  void study() {
    print('study....');
  }
  @override
  run(){
    print('Student run...');
  }
}

 class Person {
  String name;
  int age;
  String _birthday;

  bool get isAudlt => age > 18;
  run(){
    print('person run...');
  }
  toString() {
    return this.name;
  }
 }