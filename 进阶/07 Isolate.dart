import 'dart:isolate';

void main(List<String> args) {
  multiThread();
}

void multiThread() {
  print("start");

  print("当前线程名称：${Isolate.current.debugName}");

  // 线程的创建是一个异步任务
  Isolate.spawn(newThread, "hellow");
  Isolate.spawn(newThread1, "hellow1");
  Isolate.spawn(newThread2, "hellow2");

  print("end");
}

void newThread(String message) {
  print("新生成的线程名称 ${Isolate.current.debugName} $message");
}

void newThread1(String message) {
  print("新生成的线程名称 ${Isolate.current.debugName} $message");
}

void newThread2(String message) {
  print("新生成的线程名称 ${Isolate.current.debugName} $message");
}
