void main() {
  const person = const Person('zhangsan', 19);
  person.work();
  const person2 = const Person('李四', 20);
  person2.work();
  print(person);
}

class Person{
  final dynamic name;
  final dynamic age;
  const Person(this.name, this.age);
  void work() {
    print(this);
  }
}
