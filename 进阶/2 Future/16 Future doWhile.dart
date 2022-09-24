void main(List<String> args) {
  var i = 0;

  // 循环执行某一个 Future
  Future.doWhile((() {
    i++;
    return Future.delayed(Duration(seconds: 4), (() {
      print("$i  ${DateTime.now().microsecondsSinceEpoch.toString()}");

      return i < 6;
    })).then((value) {
      return value;
    });
  }));
}
