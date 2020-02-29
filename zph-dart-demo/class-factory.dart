
void main() {
  var p = new Person('张三');
  print(p.name);
  p = new Person('李四');
  print(p.name);
    p = new Person('李四');
      print(p.name);
}

class Person{
  final String name;
  static final Map<String, Person> _cache = <String, Person>{};
  factory Person(String name) {
    if (_cache.containsKey(name)) {
      print('1');
      return _cache[name];
    } else {
      final p = Person.internal(name);
       _cache[name] = p;
       return p;
    }
  }

  Person.internal(this.name);

  void log(String name) {
    print(name);
  }
}

