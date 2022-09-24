class Person {
  say() {
    return "person";
  }
}

class Point {
  say() {
    return "point";
  }

  @override
  noSuchMethod(Invocation invocation) {
    // TODO: implement noSuchMethod
    return super.noSuchMethod(invocation);
  }
}

void main(List<String> args) {
  var p = new Person();

  print(p.say());

  // 调用一个不存在的方法
  // print(p.hello());

  // 必须用dynamic 声明
  dynamic p1 = new Point();

  print(p1.say());

  print(p1.hellow());
}
