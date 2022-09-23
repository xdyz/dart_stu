void main(List<String> args) {
  Duration interval = Duration(seconds: 2);

  Stream<int> stream1 = Stream<int>.periodic(interval, (data) => data);

  stream1.takeWhile((element) {
    print("takeWhile $element");

    return element <= 5;
  }).skipWhile((el) {
    return el <= 4; // 小于等于4的会被跳过
  }) // 跳过前两个数
      .listen((event) {
    print("skip $event");
  }).onDone(() {
    print("done");
  });
}
