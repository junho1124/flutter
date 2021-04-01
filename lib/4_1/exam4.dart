import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  Word word = Word();

  print(word.firstText(input));
}

class Word {
  String firstText(List<String> input) {
    return '${input[0][0]}.${input[1][0]}';
  }
}
