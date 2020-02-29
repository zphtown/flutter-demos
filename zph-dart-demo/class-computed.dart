void main() {
  var b = new Box();
  b.width= 100;
  b.height = 100;
  print(b.area);
  b.area = 100;
  print(b.area);
}

class Box {
  num width, height;
  num get area  =>  width * height;
      set area(number){
        width = number / 2;
        height = number / 2;
      }
  // num area2() {
  //   return width * height;
  // }
}