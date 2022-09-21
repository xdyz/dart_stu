class Point {}

class Foo<T extends Point> {
  String toString() => "Instance of 'Foo<$T>'";
}

void main(List<String> args) {
  var a = Foo<Point>();

  print(a);
}
