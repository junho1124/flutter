import 'dart:io';
import 'dart:math';

void main() {
  Typhoon typhoon = Typhoon();
  List<int> inputs = [];
  for (int i = 0; i < 5; i++) {
    inputs.add(int.parse(stdin.readLineSync()!));
    inputs.sort();
  }
 for(int i = 0; i < typhoon.date(inputs).length; i++) {
   print(inputs.elementAt(i));
 }
}

class Typhoon {
  List<int> date(List<int> input) {
    List<int> miner = [];
    for (int i = 0; i < input.length - 1; i++) {
      miner.add(input[i + 1] - input[i]);
    }

    return miner;
  }
}



