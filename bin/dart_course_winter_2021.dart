import 'dart:async';

import 'dart:math';

void main() async {
  int value = await getServerValue();
  print(value);
  print('after value');

  Future<int> val = getServerValue();
  val.then((v) => print(v));
  print('after val');

  Future<int> cloneValue = getCloneServerValue();
  cloneValue.then((value) => print('clone $value'));
}

Future<int> getServerValue() {
  return Future.delayed(Duration(seconds: 5), () {
    int a = Random().nextInt(10);
    return a;
  });
}

Future<int> getCloneServerValue() {
  return Future.delayed(Duration(seconds: 2), () {
    int a = Random().nextInt(10);
    return a;
  });
}
