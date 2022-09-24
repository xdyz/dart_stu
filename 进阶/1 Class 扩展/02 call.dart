class Phones {
  call(String val) {
    print("${val}");
  }

  // 实例化调用时，会自动调用构造函数
  Phones() {
    print("我是构造函数");
  }
}

void main(List<String> args) {
  var p = Phones();
  p("st123123");

  Phones()("dafadfasf");
}
