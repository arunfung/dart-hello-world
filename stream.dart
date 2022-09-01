import 'dart:async';

Future<void> main() async {
  Future<int> getScore() async {
    return 60;
  }

  var stream = getScore().asStream().asBroadcastStream();

  stream.listen((event) {
    print(event);
  }, onDone: () {
    print('done');
  }, onError: (err) {
    print(err);
  });

  stream.listen((event) {
    print("$event 2");
  }, onDone: () {
    print('done 2');
  });
  stream.listen((event) {
    print("$event 3");
  }, onDone: () {
    print('done 3');
  });
}
