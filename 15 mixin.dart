mixin MixinA {
  String name = "混入";
}

// 此时就算没有关键字也是混入的类，不能有构造函数
class MixinB extends Object {
  num age = 10;

  // 将覆盖MixinA中的属性
  String name = "重复的混入";
}

class MyClass with MixinA, MixinB {
  MyClass() {
    print(this.name);
    print(this.age);
  }
}

void main(List<String> args) {
  final m = new MyClass();
}
