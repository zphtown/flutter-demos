void main() {
  var p = new Student();
  p.run();
}

abstract class Person{
  run () {
    print('run ...');
  }
}

class Student extends Person{
  @override
   run () {
    print('Student run ...');
  }
}