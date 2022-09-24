void main(List<String> args) {
  Duration interval = Duration(seconds: 2);

  Stream<int> stream1 = Stream<int>.periodic(interval, (data) => data);

  stream1
      .takeWhile((element) {
        print("takeWhile $element");

        return element <= 3;
      })
      .skip(2) // 跳过前两个数
      .listen((event) {
        print("skip $event");
      })
      .onDone(() {
        print("done");
      });
}
