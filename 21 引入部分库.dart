// 引入部分库
import 'dart:math' show pi, acos;

// 隐藏掉sleep 和  stderr    其余的方法和属性被引入
import 'dart:io' hide sleep, stderr;

void main(List<String> args) {
  // 此时只能使用 pi acos 两个方法 其余的方法没有被引入
  print(pi);
  print(acos(1));
}
