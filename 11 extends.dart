import 'lib/FatherClass.dart';

class Son extends Father {
  // String name = "asdfjakd";

  // 可以直接访问到父类的属性
  // getName() {
  //   return this._name;
  // }

  // 通过super 继承 父类的普通构造函数
  Son(num mony) : super(mony);

  // 通过super 继承 父类的命名构造函数
  Son.origin() : super.origin();

  // 继承命名构造函数

  // 声明一下此方法是 覆写 父类的方法
  @override
  say() {
    super.say();
    print("我是子类的方法, 我爹是${super.name}");
  }
}

void main(List<String> args) {
  final s = new Son(1);

  // 继承了父类的name属性
  print(s.getName);
  print(s.getName);

  // 子类有方法 就访问子类的，子类没有的就访问父类的
  s.say();
}
