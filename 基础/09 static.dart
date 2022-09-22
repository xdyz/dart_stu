class Point {
  static num x = 10;

  num y = 111;

  @Deprecated("不建议使用")
  static getNum() {
    return x;
  }
}

void main(List<String> args) {
  print(Point.x);
  print(Point.getNum());
}
