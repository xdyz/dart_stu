import 'dart:math' deferred as Math;

void main() async {
  // 等待库加载完成后使用
  await Math.loadLibrary();

  print(Math.pi);
}
