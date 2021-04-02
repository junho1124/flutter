import 'dart:io';
import 'dart:math';

void main() {
  Math math = Math();
  List<String> numbers = stdin.readLineSync()!.split(' ');
  int N = int.parse(numbers.elementAt(0));
  int M = int.parse(numbers.elementAt(1));
  print(math.text(N, M));
}

class Math {
  String text(int N, int M) {
    String result = 'YES';
    if (N.isEven && M.isOdd) {
      return result;
    } else if(M.isOdd && N.isEven) {
      return result;
    }
    return result = 'NO';
  }
}
