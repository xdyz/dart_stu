void main(List<String> args) {
  // 指定延迟时间
  Future.delayed(Duration(seconds: 2), () {
    // 回调函数
    // throw Error();
    return 123;
  }).then((value) => print(value)).catchError((error) {
    print("报错：$error");
  }).whenComplete(() {
    print("完成了 无论失败成功");
  });
}
