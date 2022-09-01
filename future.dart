import 'dart:async';

Future<void> main() async {
  // 异步请求
  Future<String> getPost() async {
    return "post";
  }
  // 1、同步
  var result = await getPost();
  print(result);

  // 2、异步处理
  getPost().then((result) {
    print(result);
  });

  // 处理异常
  Future<String> getPost1() async {
    throw "exception";
  }
  try {
    var result1 = await getPost1();
    print(result1);
  } catch(err) {
    print(err);
  }

  getPost1().then((value) {
    print(value);
  }).catchError((err) {
    print(err);
  });

}
