import 'package:dart_course_winter_2021/dart_course_winter_2021.dart'
    as dart_course_winter_2021;

void main() {
  List<Object> myList = [1, 2, 3, 4, 'a', 'v', 'av', 'ac'];
  print(myList.first);
  print(myList.reversed);
  myList.shuffle();
  print(myList);
  print(myList.first);
  myList.forEach((element) {
    print(element);
  });
  print(myList.indexOf(2));
  List exList = myList.expand((element) => [element, element]).toList();
  print(exList);
  myList.forEach((element) {
    print(element);
  });
  List wList = myList.where((element) {
    try {
      return int.parse(element.toString()) < 3;
    } catch (e) {
      return element == 'av';
    }
  }).toList(growable: true);
  print(wList);
}
