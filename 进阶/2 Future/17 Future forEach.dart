void main(List<String> args) {
  // 遍历一个可迭代的集合，如果要对这个结合做异步操作
  Future.forEach([1, 2, 3], (element) {
    return Future.delayed(Duration(seconds: 2), () {
      print("当前元素 $element");
      return element;
    }).then((value) => print(value));
  });
}
