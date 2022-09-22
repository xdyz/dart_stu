T getData<T>(T value) {
  return value;
}

// 不约定返回类型
// getData<T>(T value) {
//   return value;
// }

// 泛型类

class CommonClass<T> {
  Set s = new Set<T>();

  add(T val) {
    this.s.add(val);
    print(s);
  }
}

// 泛型接口
abstract class A1<T> {}

// 实现接口  类型先传递给MyClass 在传递给A1
class MyClass<T> implements A1<T> {
  MyClass(T val) {}
}

void main(List<String> args) {
  getData("123");

  CommonClass<int> cc = new CommonClass();

  cc.add(1);
  // cc.add("123"); // 此时就会报错 不符合要求

  MyClass<String> m = new MyClass("123");
}
