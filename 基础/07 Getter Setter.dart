class Circle {
  final double PI = 3.1415926;

  num r;

  Circle(this.r);

  // 声明一个get 方法
  // get 声明的方法 不能有小括号 并且此时 方法变成了类上的一个属性 通过属性的方式访问
  num get area {
    return this.PI * this.r;
  }

  // 声明一个set方法
  set setR(value) {
    this.r = value;
  }
}

void main(List<String> args) {
  // 实例化
  final circle = new Circle(133);

  // 通过访问属性的方式 来进行
  print(circle.area);

  // 通过set 方法 修改属性  使用方式 也是当做属性来进行操作
  circle.setR = 20;
  print(circle.area);
}
