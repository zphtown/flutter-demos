import 'utils/person.dart';
void main() {
  var p = new Person();
  p.name = '张三';
  p.age = 19;
  print(p.say());
}