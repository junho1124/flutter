import 'dart:io';

void main() {
  String s = stdin.readLineSync()!;

  int result = 0;
  for (int i = 0; i < s.length; i++) {

    if (s.substring(i, i + 1) == 'A') {
      result = result + 1;
    }
  } return print(result);
}

// class CountString {
//
//   int solution() {
//     String s = '';
//
//     int result = 0;
//     for (int i = 0; i < s.length; i++) {
//
//       if (s.substring(i, i + 1) == 'A') {
//         result = result + 1;
//       }
//     } return result;
//   }
//
// }
