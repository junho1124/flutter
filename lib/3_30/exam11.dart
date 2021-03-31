import 'dart:math';

void main() {
  Math exam = Math();
  print(exam.range('C'));
  print(exam.range('B'));
  print(exam.range('Q'));
  print(exam.range('V'));
  print(exam.range('X'));
  print(exam.range('E'));
  print(exam.range('T'));
  print(exam.range('Y'));
}

class Math {
  String range(String s) {
    List<String> alphabet = [
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'U',
      'V',
      'W',
      'X',
      'Y',
      'Z'
    ];
    String result = '';
    for (int i = 0; i < alphabet.length; i++) {
      if (alphabet.elementAt(i) == s) {
        result = '${i + 1}';
        break;
      }
    }

    return result;
  }
}
