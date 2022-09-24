void main(List<String> args) {
  Duration interval = Duration(seconds: 2);

  Stream<int> stream1 = Stream<int>.periodic(interval, (data) => data);

  stream1.take(5).listen((event) {
    print("take $event");
  }).onDone(() {
    print("done");
  });
}
