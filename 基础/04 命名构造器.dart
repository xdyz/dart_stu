class Point {
  num x, y;

  // 普通构造函数
  Point() {}

  // 命名构造函数1
  Point.origin() {
    this.x = 0;
    this.y = 0;
  }

  // 命名构造函数2
  Point.fromJson(num x, num y) {
    this.x = x;
    this.y = y;
  }
}

void main(List<String> args) {
  // 我可以根据 命名构造函数的不同，来进行不同实例的创建
  // 例如我想进行不同的初始化操作，我就可以根据不同命名构造函数 来进行实例化
  // 这样不会因为初始化的不同，而去再次创建一个新类

  // 如果后面不指定方法，默认走 普通构造函数Point 方法

  // 通过origin 方法 来实例化
  Point p1 = new Point.origin();

  print(p1.x);

  // 通过fromJson来实例化
  Point p2 = new Point.fromJson(2, 5);
  print(p2.x);
}
