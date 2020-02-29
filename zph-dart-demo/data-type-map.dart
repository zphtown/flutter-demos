import 'dart:convert';

void main() {
 var o = {'a': 'a-value',};
//  print(o);
 o = new Map();
 o['b'] = 'b-value';
 o['1'] = '1';

//  print(o);
//  print(o.length);
//  print(o.keys);
//  print(o.values);
//  print(o.containsKey('b'));
//  print(o.containsValue('1'));


var a = const {"a": 1};
a = {"b": 2};
print(a);

a.remove("b");
print(a);
a['name'] = 111;
a['age'] = 222;
a.forEach((k, v) => {
  print('key=${k}, value=$v')
});
print(a);

var list = [1,2,3];
print(list.asMap());
} 