void main(List<String> args) {
  Duration interval = Duration(seconds: 2);

  Stream<int> stream1 = Stream<int>.periodic(interval, (data) => data);

  stream1.takeWhile((element) {
    // print("takeWhile $element");

    return element <= 3; // 设置循环次数
  }).where((data) {
    print("where -> $data");
    return data % 2 == 0; // 过滤需要的结果条件
  }).listen((event) {
    // 符合上面条件的数据
    print("take $event");
  }).onDone(() {
    print("done");
  });
}
