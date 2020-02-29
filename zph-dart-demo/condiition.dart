void main() {
  // var a = 1;
  // print(a==1);
  // int aa;
  // int b = 2;
  // int c = aa ?? b;
  // print(c);

  // ************************* if *************************

  // const score = 1;
  // if (score==100) {
  //   print('满分');
  // } else if (score >= 90){
  //   print('优秀');    
  // } else if (score >= 60) {
  //   print('及格');    
  // } else {
  //   print('差劲');    
  // }


  // ************************* for & for in *************************
  // const list = [1,2,3];
  // for (var i =0; i<list.length; i++) {
  //   print(list[i]);
  // }
  // print('line================');
  // for(var item in list) {
  //   print(item);
  // }

  // ************************* do while & while *************************
  // int count = 0;
  // while(count <5) {
  //   print(count++);
  // }
  // print('line================');

  // do {
  //   print(count--);
  // } while (count >0 && count <5);

  // ************************* break & continue *************************
  // const list = [1,2,3];
  // for(var i in list) {
  //   if (i ==2) {
  //     continue;
  //   }
  //   print(i);
  // }

 // ************************* switch *************************
const score = 2;
switch(score) {
  D:
  case 1:
    print('1');
    break;
  case 2:
    print('2');
    continue D;
  default: 
    print('3');
}

 }