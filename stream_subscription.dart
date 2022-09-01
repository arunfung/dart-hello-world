import 'dart:async';

class Student {
  int score = 60;

  Student(this.score);
}

Future<void> main() async {
  var score = 59;
  Future getStudent(score) async {
    return Student(score);
  }

  var stream = getStudent(score).asStream().asBroadcastStream();

  var t = stream.listen((student) {
    print('${student.score} 1');
    student.score = 60;
  });

  var f = stream.listen((student) {
    print('${student.score} 2');
    student.score = 90;
  });

  var m = stream.listen((student) {
    print('${student.score} 3');
  });

  if (score < 60) {
    m.pause();
    m.resume();
  }
}
