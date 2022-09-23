void main(List<String> args) {
  final f1 = Future.delayed(Duration(seconds: 4), (() => 1));
  final f2 = Future.delayed(Duration(seconds: 3), (() => 2));
  final f3 = Future.delayed(Duration(seconds: 2), (() => 3));
  final f4 = Future.delayed(Duration(seconds: 13), (() => 4));

  Future.any([f1, f2, f3, f4]).then((value) {
    print(value);
  });
}
