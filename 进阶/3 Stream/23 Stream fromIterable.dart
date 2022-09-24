Future<String> getData(int seconds) {
  return Future.delayed(Duration(seconds: seconds), () => "${DateTime.now()}");
}

void main(List<String> args) {
  Stream.fromIterable([getData(1), getData(3)]).listen((event) {
    print("fromFutures $event");
  }).onDone(() {
    print("fromFutures done");
  });
}
