void main() {
  String name = "arunfung";
  print(name);

  dynamic name1 = 1;
  print(name1);

  var name2;
  name2 = "arun";
  print(name2);

  const double = "arun"; // 初始化就需要被赋值
  print(double);

  final double1; // 初始化
  double1 = "1234"; // 只允许被赋值一次
  print(double1);

  final ages = [10,20,30]; // 初始化
  ages[0] = 1; // 只允许被赋值一次
  print(ages);

  final time = DateTime.now(); // 只允许被赋值一次
  print(time);

  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }
}