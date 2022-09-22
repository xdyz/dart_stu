abstract class Point {
  // 抽象方法，只有方法名 没有方法体

  String name;

  String hai();
}

abstract class Creame {
  heel();

  // 不同抽象类内部 相同名称的方法，互不影响
  num say();
}

class Hu implements Creame, Point {
  @override
  num say() {
    return 1;
  }

  @override
  String hai() {
    throw UnimplementedError();
  }

  @override
  String name;

  // 对于不同抽象类的相同名称的方法 只需要实现一个就行
  @override
  heel() {}
}

void main(List<String> args) {}
