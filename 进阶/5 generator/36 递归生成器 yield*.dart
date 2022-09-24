void main(List<String> args) {
  // final Iterable<int> s = getRange(1, 6);

  // print("sync*  start");
  // s.forEach((element) {
  //   print(element);
  // });

  // print("sync* end");

  final Stream<int> s1 = getRange1(1, 6);

  print("async*  start");
  s1.forEach((element) {
    print(element);
  });

  print("async* end");
}

// 同步递归生成器
Iterable<int> getRange(int start, int end) sync* {
  if (start < end) {
    yield start;
    // 同下
    // for (final val in getRange(start + 1, end)) {
    //   yield val;
    // }
    yield* getRange(start + 1, end);
  }
}

// 异步递归生成器
Stream<int> getRange1(int start, int end) async* {
  if (start < end) {
    yield start;
    // 同下
    // for (final val in getRange(start + 1, end)) {
    //   yield val;
    // }
    yield* getRange1(start + 1, end);
  }
}
