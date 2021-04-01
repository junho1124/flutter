// import 'dart:io';
//
// void main() {
//   String s = stdin.readLineSync()!;
//
//   int result = 0;
//   for (int i = 0; i < s.length; i++) {
//
//     if (s.substring(i, i + 1) == 'A') {
//       result = result + 1;
//     }
//   } return print(result);
// }

import 'dart:io';

void main() {
  CountString countString = CountString();
  String s = stdin.readLineSync()!;
  print(countString.solution(s));
}
class CountString {

  int solution(String s) {
    String text = s;

    int result = 0;
    for (int i = 0; i < text.length; i++) {

      if (text.substring(i, i + 1) == 'A') {
        result = result + 1;
      }
    } return result;
  }

}
