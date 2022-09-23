void main(List<String> args) {
  print("start");
  Future.value(Future((() => print("Future.value.Future")))); //

  Future((() => print("Future task"))); // 宏任务

  Future.microtask(() => print("Future.microtask")); //微任务

  Future.sync(() => print("Future.sync")); // 同步任务

  Future.value("Future.value").then((value) => print(value)); //微任务

  print("end");
}
