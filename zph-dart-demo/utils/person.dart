class Person {
  String name;
  int age;
  final String gender = 'femail';

  String say() {
    return 'name: $name, age: $age, gender: $gender';
  }
}
