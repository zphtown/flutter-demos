void main() {
  print((new Person())('张三'));
}

 class Person{
   dynamic name;
   String call(name) {
     return name;
   }
 } 