class Rect {
  num x;
  num y;

  //方法一 此时x,y必须传值
  // Rect(this.x, this.y);

  // 方法2 设置可选参数，并且给可选参数配置默认值
  // Rect([ int x = 2, int y = 10]) {
  //   this.x  =x;
  //   this.y = y;
  // }

  // 方法3 命名参数配置

  // Rect({ int x = 2, int y = 10}) {
  //   this.x  =x;
  //   this.y = y;
  // }

  // 方法4 此时不强制传值 也不用像2 3中每次给x 和 y 赋值
  // 这里其实就是想1 和 2, 3 的集合
  Rect()
      : x = 10,
        y = 20 {
    print("${this.x} ${this.y}");
  }
}

class Point {
  double x, y, z;

  Point(this.x, this.y, this.z);

  // 初始化列表特殊用法（重定向构造函数）
  Point.twoD(double x, double y) : this(x, y, 0);
}

void main(List<String> args) {
  var r = new Rect(); // 不用强制传参实现值初始化

  var p = new Point(1, 2, 3);
  print(p.z);
  var p1 = new Point.twoD(1, 2);
  print(p1.z);
}
