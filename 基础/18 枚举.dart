enum Colors { red, green, blue }

void main(List<String> args) {
  // 获取常量的索引
  print(Colors.green.index); // 1

  // 通过values 返回常量列表
  print(Colors.values);

  List<Colors> colors = Colors.values;

  colors.clear;
  print(colors);
  print(Colors.blue);
}
