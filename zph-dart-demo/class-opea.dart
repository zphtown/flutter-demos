void main() {
  new Person()..name = '张三'
    ..age = 18
    ..log();
}

class Person{
  dynamic name;
  dynamic age;

  void log() {
    print('name: ${this.name}, age: ${this.age}');
  }
}