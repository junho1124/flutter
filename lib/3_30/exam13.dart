import 'dart:math';

void main() {
  Math exam = Math();
  print(exam.division(130, 3));
  print(exam.division(10, 3));
  print(exam.division(12, 14));
}

class Math {
  String division(int m, int n) {
    int rem = m % n;
    int div = m ~/ n;
    String result = '$div $rem';

    return result;
  }
}
