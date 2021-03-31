import 'dart:math';

void main() {
  Math exam = Math();
  print(exam.range(1, 'km'));
  print(exam.range(1, 'm'));
  print(exam.range(1, 'cm'));
}

class Math {
  String range(int n, String b) {
    String result = '';
    int km = n * 1000;
    int m = n * 100;
    int cm = n * 10;
    if (b == 'km') {
      result = '${km * m * cm}';
    } else if (b == 'm') {
      result = '${m * cm}';
    } else if (b == 'cm') {
      result = '$cm';
    }
    return result;
  }
}
