import 'dart:math';

void main() {
  Math exam = Math();
  print(exam.numbers(10, 20));
  print(exam.numbers(3, 3));
}

class Math {
  String numbers(int a, int b) {
    String result = ' ';

    if (a != b) {
      int d = max(a, b);
      result = '$d';
    } else if (a == b) {
      result = 'eq';
    } return result;
  }
}
