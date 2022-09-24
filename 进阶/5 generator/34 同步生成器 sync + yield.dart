void main(List<String> args) {
  // 调用方法
  var res = getNumber(5).iterator;

  // res.moveNext(); // 执行一次 getNumber 内部就执行一次
  // print(res.current); //第一次执行 0

  // res.moveNext();
  // print(res.current); // 1

  // res.moveNext();
  // print(res.current); //2

  // res.moveNext();
  // print(res.current); //3

  // res.moveNext();
  // print(res.current); //4

  // 换一种写法

  while (res.moveNext()) {
    // res.moveNext();
    print(res.current);
  }
}

// 声明一个同步生成器
Iterable getNumber(int n) sync* {
  print("start");

  int i = 0;

  while (i < n) {
    yield i++; // 返回值 的写法
  }

  print("end");
}
