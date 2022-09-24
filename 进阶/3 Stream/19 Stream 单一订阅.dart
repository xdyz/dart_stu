import 'dart:async';

void main(List<String> args) {
  // 创建一个数据流
  final StreamController controller = StreamController();

  // 第一次监听
  controller.stream.listen((event) {
    print("$event");
  });

  // 第二次监听  会报错
  controller.stream.listen((event) {
    print("$event");
  });

  controller.sink.add("单一数据流数据");
  controller.sink.add("单一数据流数据22");
  controller.sink.add("单一数据流数据2233");
  controller.sink.add("单一数据流数据2241234");
  controller.sink.add("单一数据流数据231231232");
}
