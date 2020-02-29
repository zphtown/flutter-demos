void main() {
  var list = ['a', 'b', '1'];
  print(list);
  print(list.indexOf('string1'));
  list.add('111');
  print(list);
  list.insert(0, 'hello world');
  print(list);
  list.sort();
  print(list);
  print(list.sublist(1));
}
