import 'dart:async';
import 'dart:isolate';

void newTread(SendPort p1) async {
  // 新建线程
  print("当前线程2：${Isolate.current.debugName}");

  // 新建的线程给 线程1 发消息
  // p1.send("我是新线程，你好啊");

  // const dura = const Duration(seconds: 5);
  // Timer(dura, () {
  //   p1.send("我又来啦");
  // });

  // 新线程中 也建立一个ReceivePost 类的实例
  ReceivePort r2 = ReceivePort();

  // 获取SendPort
  SendPort p2 = r2.sendPort;

  // 将p2 通过p1 发送给mutilThread
  p1.send(p2);

  r2.listen((message) {
    print("muliThread 发送过来的消息：${message}");
  });

  await for (var msg in r2) {
    var data = msg[0];

    SendPort replyPort = msg[1];

    replyPort.send("我收到啦");
  }
}

void mutilThread() async {
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
  // p1 发送过来的p2  mutilThread 通过 发送过来的sendPort 和 newThread 通信
  // r1.listen((message) {
  // print("r1 接受到的消息： $message");

  // 如果不写close 线程会受阻 一直监听下去
  // r1.close();
  // });

  //p1 发送过来的p2  mutilThread 通过 发送过来的sendPort 和 newThread 通信
  SendPort p2 = await r1.first;

  // 给新线程发消息
  // p2.send("我收到了你得消息");

  // print("end");

  var msg = await sendToReceive(p2, "hello");

  print("主线程接收到 ${msg}");
}

void main(List<String> args) {
  mutilThread();
}

Future sendToReceive(SendPort port, msg) {
  print('发送消息给新线程： ${msg.toString()}');

  ReceivePort res = ReceivePort();

  port.send([msg, res.sendPort]);

  return res.first;
}
