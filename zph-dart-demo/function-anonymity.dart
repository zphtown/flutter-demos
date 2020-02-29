void main() {
 print(test(['1','2',3]));
}

List test(List arr) {
  var func = (str) => str * 3;
  for(var i =0; i<arr.length; i++) {
    arr[i] = func(arr[i]);
  }
  return arr;
}  