// 声明一个函数类型
typedef MethOperation(int a, int b);

// 声明加法运算
add(int a, int b) {
  return a + b;
}

add1(int a, int b, int c) {
  return a + b;
}

sub(int a, int b) {
  return a - b;
}

void main(List<String> args) {
  var a = "123";

  print(a is String); // true
  print(a is int); // false
  print(a is! int); // true

  // 判断是不是MethOperation 函数类型
  print(add is MethOperation); // true
  print(add1 is MethOperation); // false 参数不一致

  // 别名

  MethOperation op = add;

  //  此时 op 代表 add 函数
  print(op(10, 20)); // 30

  op = sub;

  print(op(10, 20)); // -10
}
