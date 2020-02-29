void main() {
  var a;
  a = 1;
  a = 'str';
  dynamic b = 'b';
  b = 10;
  print(b);

  var list = new List<dynamic>();
  list.add(123);
  list.add(false);
  list.add('str');
  print(list);
}