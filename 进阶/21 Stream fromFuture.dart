Future<String> getData(int seconds) {
  return Future.delayed(Duration(seconds: seconds), () => "${DateTime.now()}");
}

void main(List<String> args) {
  Stream.fromFuture(getData(2)).listen((event) {
    print("fromFuture $event");
  }).onDone(() {
    print("fromFuture done");
  });
}
