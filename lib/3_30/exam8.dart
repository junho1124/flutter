import 'dart:math';

void main() {
  List<String> inputs = ['Java', 'Gino', "Junho"];
  Exam exam = Exam();
  print(exam.hello(inputs));
}

class Exam {
  String hello(List<String> list) {
    String result = '';
    for (int i = 0; i < list.length - 1; i++) {
      result += '${list.elementAt(i)} ,';
    }
    return 'hello ' + result + '${list.elementAt(list.length - 1)}.';
  }
}
