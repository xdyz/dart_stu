// 工厂函数 就是 像JS中类的单例模式
class Person {
  String name;

  // 声明一个属性用于保存，当前类的实例
  // static 关键字  代表静态类型
  static Person instance;

  // factory 为工厂构造函数关键字
  // 工厂函数内不能使用this
  factory Person([String name = "123"]) {
    // 第一次实例化 如果没有这个 就先实例化 然后返回
    if (Person.instance == null) {
      Person.instance = new Person.self(name);
    }

    // 如果已经实例化过了 那就直接返回
    return instance;
  }

  Person.self(this.name);
}

void main(List<String> args) {
  // final p1 = new Person("1233333");
  final p2 = new Person("dfsdf");
  final p3 = new Person("11111111dfsdf");

  print(p2 == p3);
  print(p2.name);
  print(p3.name);
}
