class Point {
  num x, y;
  // 普通/默认构造函数 与类同名
  // 实例化时就会被调用
  Point(int x, int y) {
    print("$x $y");
    this.x = x;
    this.y = y;
  }
}

// 简写

class Point1 {
  num x, y;

  Point1(this.x, this.y);
}

void main(List<String> args) {
  // 实例化时，需要传入构造函数需要的参数
  final point = new Point(1, 2);

  final point1 = new Point1(1, 3);
}
