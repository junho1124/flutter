import 'dart:math';

void main() {
  Math exam = Math();
  print(exam.range(-12235));
  print(exam.range(130));

}

class Math {
  int range(int n) {
    int result = n;
    if (n < 0) {
      result = n.abs();
    }
    return result;
  }
}