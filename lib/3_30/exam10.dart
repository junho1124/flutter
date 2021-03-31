import 'dart:math';

void main() {
  Math exam = Math();
  print(exam.range(1, 'km'));
  print(exam.range(5, 'm'));
  print(exam.range(1, 'cm'));
}

class Math {
  String range(int n, String b) {
    String result = '';
    int km = 1000;
    int m =  100;
    int cm = 10;
    if (b == 'km') {
      result = '${ n * km * m * cm}';
    } else if (b == 'm') {
      result = '${n * m * cm}';
    } else if (b == 'cm') {
      result = '${n * cm}';
    }
    return result;
  }
}
