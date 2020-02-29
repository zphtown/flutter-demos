void main() {
  var s = new Student();
  s.run();
}
class Person {
  int count;
  void run() {}
}

class Student implements Person{
  @override
  int count;

  @override
  void run() {
    print('hello implements');
    // TODO: implement run
  }

}