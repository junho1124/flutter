import 'dart:math';

void main() {
  Math exam = Math();
  print(exam.numbers(3, 3));
  print(exam.numbers(5, 10));
  print(exam.numbers(1, 3));
}

class Math {
  String numbers(int a, int b) {
    String result = '';
    for (int i = 0; i < 10; i++) {
      int temp = a + b * i;
      result += '$temp ';
    }
    return result;
  }
}
