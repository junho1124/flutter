import 'dart:io';

import 'dart:math';

void main() {
  Exam exam = Exam();
  String E = stdin.readLineSync()!;

  print(exam.solution(E));
}

class Exam {
  int solution(String E) {
    List<String> A = E.split('+');

    int result = 0;
    for (int i = 0; i < A.length; i++) {
      String a = A.elementAt(i);

      for (int i = 0; i < a.length; i++) {
        if (a.substring(i, i + 1) == '/') {
          result = result + 1;
        } else if (a.substring(i, i + 1) == '<') {
          result = result + 10;
        }
      }
    }
    return result;
  }
}
