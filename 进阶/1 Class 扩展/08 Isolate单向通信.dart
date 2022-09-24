import 'dart:async';
import 'dart:isolate';

void newTread(SendPort p1) {
  // 新建线程
  print("当前线程2：${Isolate.current.debugName}");

  // 新建的线程给 线程1 发消息
  p1.send("我是新线程，你好啊");

  const dura = const Duration(seconds: 5);
  Timer(dura, () {
    p1.send("我又来啦");
  });
}

void mutilThread() {
  // 主线程
  print("当前线程1：${Isolate.current.debugName}");
  print("start");

  // 先定义一个ReceivePost 类的实例
  ReceivePort r1 = ReceivePort();

  // 获取Sendport
  SendPort p1 = r1.sendPort; // 这是一个getter

  // 创建一个新的线程
  Isolate.spawn(newTread, p1);

  // 接收新线程发送过来的消息

  // 第一种接收方式
  // var msg = r1.first;
  // print("来自新线程的消息 ${msg.toString()}");

  // 第二种接收方式 监听
  r1.listen((message) {
    print("r1 接受到的消息： $message");

    // 如果不写close 线程会受阻 一直监听下去
    r1.close();
  });

  print("end");
}

void main(List<String> args) {
  mutilThread();
}
