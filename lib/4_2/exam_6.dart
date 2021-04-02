import 'dart:io';
import 'dart:math';

void main() {
  Exam exam = Exam();
  String s = stdin.readLineSync()!;
  print(exam.solution(s));
}

class Exam {
  String solution(String s) {
    String result = 'OK';
    if (s.length < 11) {
      result = '${11 - s.length}';
    } return result;
  }
}