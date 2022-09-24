import 'dart:isolate';

void main(List<String> args) {
  start();

  newIsolate();

  init();
}

newIsolate() async {
  print("新线程");

  ReceivePort r = ReceivePort();

  SendPort p = r.sendPort;

  //执行文件所在路径
  Isolate childIsolate = await Isolate.spawnUri(
      Uri(path: "./lib/childIsolate.dart"), ["date1", "date1"], p);

  r.listen((message) {
    print("主线程接收到的数据 ${message[0]}");

    if (message[1] == 2) {
      r.close(); // 数据接收完成 关闭通道

      childIsolate.kill(); // 杀死新线程，释放资源
    }
  });
}

start() {
  print("应用启动 ${DateTime.now().microsecondsSinceEpoch.toString()}");
}

init() {
  print("项目初始化");
}
