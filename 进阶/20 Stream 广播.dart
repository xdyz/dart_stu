import 'dart:async';

void main(List<String> args) {
  StreamController controller = StreamController.broadcast();

  // 第一次监听
  controller.stream.listen((event) {
    print("11 $event");
  });

  // 第二次监听
  controller.stream.listen((event) {
    print("22  $event");
  });

  controller.sink.add("单一数据流数据");
  controller.sink.add("单一数据流数据22");
  controller.sink.add("单一数据流数据2233");
  controller.sink.add("单一数据流数据2241234");
  controller.sink.add("单一数据流数据231231232");
}
