void main(List<String> args) {
  Duration interval = Duration(seconds: 2);

  Stream<int> stream1 = Stream<int>.periodic(interval, (data) => data);

  stream1.takeWhile((element) {
    print("takeWhile $element");

    return element <= 5;
  }).map((el) {
    return el * 100; // 处理每一个数据 与 JS的map相同
  }) // 跳过前两个数
      .listen((event) {
    print("map $event");
  }).onDone(() {
    print("done");
  });
}
