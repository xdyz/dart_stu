import 'package:http/http.dart' as http;

void main(List<String> args) async {
  // Future a() {
  //   final url = "http://" as Uri;
  //   return http.get(url).then((res) {
  //     print(res.body);
  //   });
  // }

  // // 通过 then  catchError 方式调用

  // a().then((value) {
  //   print(value)
  // }).catchError((err) {
  //   print(err);
  // });

  // 通过 async await 来访问数据

  Future b() async {
    final url = "http://baidu.com" as Uri;

    final res = await http.get(url);

    return res;
  }

  try {
    final res = await b();
  } catch (e) {
    print(e);
  }
}
