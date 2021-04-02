import 'dart:io';
import 'dart:math';

void main() {
  Math math = Math();
  List<int> inputs = [];
  for (int i = 0; i < 4; i++) {
    inputs.add(int.parse(stdin.readLineSync()!));
    inputs.sort();
  }
  print(math.solution(inputs));
}

class Math {
  int solution(List<int> input) {
    List<int> numbers = [1, 2, 3, 4, 5];
    int result = 0;
    for (int i = 0; i < numbers.length; i++) {
      if (input.contains(numbers[i]) == false) {
        result = numbers[i];
        break;
      }
    }
    return result;
  }
}



