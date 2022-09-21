// 常量类  内部所有的属性 方法都是常量

class ImmutablePoint {
  final num x;
  final num y;

  // 常量构造函数，必须通过const 进行命名，且不能有 {} body体
  const ImmutablePoint(this.x, this.y);
}

void main(List<String> args) {
  // 常量构造函数，可以当做普通构造函数使用  用new 创建 此时就是一个普通构造函数
  // 实例化时 new 可以省略
  // final p1 = new ImmutablePoint(3, 5);
  // final p2 = new ImmutablePoint(3, 5);

  // print(p1 == p2); // false

  // 实例化常量构造函数 需要用const 关键字来实例化
  final p3 = const ImmutablePoint(2, 3);
  final p4 = const ImmutablePoint(2, 3);

  print(p3 == p4); // true

  // 与new 的写法是一样的
  final p7 = ImmutablePoint(2, 3);
  final p8 = ImmutablePoint(2, 3);

  print(p3 == p4); // false
}
