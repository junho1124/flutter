import 'dart:io';
import 'dart:math';

void main() {
  Math math = Math();
  List<String> numbers = stdin.readLineSync()!.split(' ');
  int N = int.parse(numbers.elementAt(0));
  int M = int.parse(numbers.elementAt(1));
  print(math.solution(M, N));
}

class Math {
  String solution(int m, int n) {
    String result = '';
    for (int i = 0; i < 10; i++) {
      int temp = m + n * i;
      result += '$temp ';
    }
    return result;
  }
}