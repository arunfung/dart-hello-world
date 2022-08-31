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

  final ages = [10, 20, 30]; // 初始化
  ages[0] = 1; // 只允许被赋值一次
  print(ages);

  final time = DateTime.now(); // 只允许被赋值一次
  print(time);

  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }

  List names = ["a", "b", "c", "d", "f", "f"]; // 数组可重复
  names.add(1000);
  names = names.where((e) {
    return e != "a";
  }).toList();
  names.remove("b");
  print(names.reversed);

  Set setNames = {"a", "b", "c", "d", "f"}; // 集合不可重复
  print(setNames.length);
  print(setNames.contains("a"));

  // map 相同的key，后面会覆盖前面
  Map<String, dynamic> person = {
    "name": "arun",
    "addr": "上海",
  };
  print(person['name']);

  person.putIfAbsent("age", () => 18);
  print(person['age']);
  print(person.containsKey("age"));
  person.forEach((key, value) {
    print('${key}: ${value}');
  });

  // 未命名参数传参
  String transform(String key, String value) {
    return "$key $value";
  }

  print(transform("hi", "arun"));

  // 命名化参数传参 required 必传、 ? 不必传、 ：""  默认值
  String transform1({required String key, String? value: "fung"}) {
    return "$key $value";
  }

  print(transform1(key: "hi", value: "arun"));

  // 匿名函数
  var func = ({required String key, String? value: "fung"}) {
    return "$key $value";
  };
  print(func(key: "hi", value: "func"));
  // 强类型限制 + 简单的剪头返回值
  Function func1 =
      ({required String key, String? value: "fung"}) => "$key $value";
  print(func1(key: "hi", value: "func1"));

  var result;
  result ??= "fail";
  print(result);

  List forNames = ["a", "b", "c", "d", "f"];
  for (var i = 0; i < forNames.length; i++) {
    print(forNames[i]);
  }

  forNames.forEach((element) {
    print(element);
  });

  Animal a = new Animal("cat", 5);
  print(a);

  Animal b = Animal.create("arun", 18);
  print(b.name);
  print(b.age);
  b.say();

  Animal c = Animal("dog", 3); // 不加 new 关键字也可以
  print(c);
  c.say();

  print(Animal.desc); // 静态属性使用不需要实例化
  Animal.introduce(); // 静态方法使用不需要实例化

  Dog dog = Dog("小明", 3, "hhhh");
  print(dog.name);
  print(dog.age);
  print(dog.des);

  if (dog is Animal) {
    dog.say();
    print("yes");
  }

  (dog as Animal).say(); // 简写方式
}

class Animal {
  static var desc = "动物世界"; // 静态属性
  static introduce() {
    // 静态方法
    print(Animal.desc);
  }

  String? name;
  int? age;

  Animal(this.name, this.age); // 类的构造函数

  Animal.create(pName, pAge)
      : name = pName,
        age = pAge;

  // 类的成员方法
  say() {
    print('${this.name}:${this.age}');
  }
}

class Dog extends Animal {
  String des;

  Dog(String name, int age, this.des) : super(name, age);
}
