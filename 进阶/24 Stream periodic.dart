Future<String> getData(int seconds) {
  return Future.delayed(Duration(seconds: seconds), () => "${DateTime.now()}");
}

void main(List<String> args) {
  Duration interval = Duration(seconds: 2);

  // Stream<int> stream = Stream<int>.periodic(interval);

  // stream.listen((event) {
  //   print("periodic $event");
  // }).onDone(() {
  //   print("done");
  // });

  // 带有第二个参数 返回具体的数据

  Stream<int> stream1 = Stream<int>.periodic(interval, (data) => data);

  stream1.listen((event) {
    print("periodic $event");
  }).onDone(() {
    print("done");
  });
}
