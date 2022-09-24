void main(List<String> args) {
  Duration interval = Duration(seconds: 2);

  Stream<int> stream1 = Stream<int>.periodic(interval, (data) => data);

  Stream.fromIterable([1, 2, 3, 4, 2, 2])
      .distinct() // 去掉与前一个数据相同的数据，而不是完全去重  去掉连续重复的值
      .listen((event) {
    // 符合上面条件的数据
    print("distinct $event");
  }).onDone(() {
    print("done");
  });
}
