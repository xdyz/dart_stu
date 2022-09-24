test(int n) {
  return Future.delayed(Duration(seconds: n), () {
    print("Future Delayed $n");
  });
}

void main(List<String> args) async {
  print("start");

  // 不使用 asyn await 此时就是一个异步
  // test(1);

  // 使用await 此时会等执行完 在执行那最后的打印
  //后面所有的代码 等待test执行完成 才会继续执行 异步转同步
  await test(1);

  print("end");
}
