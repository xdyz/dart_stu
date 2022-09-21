class Point {
  num x = 10;

  num y = 111;

  // @Deprecated("不建议使用")
  @deprecated
  getNum() {
    return x;
  }
}

void main(List<String> args) {
  final p = new Point();
  print(p.getNum());
}
