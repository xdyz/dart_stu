void main(List<String> args) {
  final Stream<int> s = asyncCountDown(10);

  // 这里是异步的
  print("start");
  s.listen((event) {
    print(event);
  }).onDone(() {
    print("done");
  });
  print("end");
}

Stream<int> asyncCountDown(int n) async* {
  // 内部是同步的
  print(" async* start");

  while (n > 0) {
    yield n--;
  }
  print(" async* end");
}
