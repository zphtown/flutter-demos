void main(List arr) {
  // print(arr);
//  print(test3('张三', age: 18, grade: '一年级'));
  // print(test4('张三', 18, '一年级'));
    print(test4('张三'));
    
}
String test(name, age){
  return 'name=$name,age=$age';
  // print('name=$name,age=$age');
}

String test2(name, age) => 1==0 ?  'name=$name,age=$age' : '哼唧';

String test3(name, {int age, String grade}) => 'name=$name,age=$age,grade=$grade';

String test4(name, [int age = 20, String grade = '五年级']) => 'name=$name,age=$age,grade=$grade';