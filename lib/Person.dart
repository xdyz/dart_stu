class Person {
  // 声明私有属性
  num _mongy = 100;

  Person(this._mongy);

  // 可以通过这么去访问私有属性
  num getMony() {
    return this._mongy;
  }

  // 声明私有方法

  void _printMony() {
    print(this._mongy);
  }
}
