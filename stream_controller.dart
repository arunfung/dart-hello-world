import 'dart:async';

class Student {
  int score = 60;

  Student(this.score);
}

void main() {
  int score = 59;

  var sc = StreamController.broadcast();

  var t = sc.stream.listen((student) {
    print('${student.score} 1');
    student.score = 70;
  });

  var f = sc.stream.listen((student) {
    print('${student.score} 2');
    student.score = 90;
  });

  var m = sc.stream.listen((student) {
    print('${student.score} 3');
  });

  sc.add(Student(score));
  sc.add(Student(60));
  if (score < 60) {
    m.pause(); // 暂停
    // m.resume(); // 重启
  }
}
