// 声明类 class 为小写关键字
class Person {
  // 类的属性
  String name = "sefsdf";

  int age = 1;

  // 类的方法

  String getName() {
    return name + "123123";
  }

  int getAge() {
    return age + 100;
  }
}

void main(List<String> args) {
  var person = new Person();

  // 访问实例化的类的属性
  print(person.name);
  print(person.age);

  // 访问实例化的类的方法

  print(person.getAge());
  print(person.getName());

  // dart 中 万物皆对象
}
