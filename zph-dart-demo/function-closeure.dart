void main() {
  var f = test();
  f();
    f();
      f();
        f();
}

test () {
  int count = 0;
  return () => {
    print(count++)
  };
}