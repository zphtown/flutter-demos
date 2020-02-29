void main() {
  var p = new Person('jane', 19, 'Female');
  print('${p.name}, ${p.age}, ${p.gender}');
  var p2 = new Person.widthName('Tom');
  print(p2.name);
}

class Person {
  String name;
  int age;
  String gender;

  // 只能定义一个构造方法，构造方法与类同名
  Person(this.name, this.age, this.gender);

  // 实现多个构造方法   但是如果设置 String gender;  会提示Context: 'gender' is defined here. 将  String gender; 去掉就可以了
  Person.widthName(String name) {
    this.name = name;
  }
}