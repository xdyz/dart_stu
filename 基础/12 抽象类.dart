abstract class Point {
  // 抽象方法，只有方法名 没有方法体
  void say();

  String name;

  String hai();
}

// 子类继承
class Son extends Point {
  // 继承抽象类的 子类 必须实现这个方法 不然会报错
  @override
  void say() {}

  @override
  String hai() {
    return "";
  }
}

class Hu implements Point {
  @override
  void say() {}

  @override
  String hai() {
    throw UnimplementedError();
  }

  @override
  String name;
}

void main(List<String> args) {}
