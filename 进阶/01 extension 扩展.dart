// 扩展内置类
extension StringExtension on String {
  // 给String这个类  扩展一个方法 将字符串转为数字
  stringToInt() {
    return int.parse(this);
  }
}

// 扩展自定义类
class Person {
  say() {}
}

extension PersonExtension on Person {
  hello() {
    print(123);
  }
}

void main(List<String> args) {
  // String 类型的数据就可以使用这个方法了
  // 上面的扩展注释掉就报错了
  String num1 = "20";
  print(num1.stringToInt());

  var p = new Person();

  p.hello();
}
