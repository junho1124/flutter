// void main() { // 안돌아감
//   Math exam = Math();
//   print(exam.numbers('5555'));
//   print(exam.numbers('3335'));
// }
//
// class Math {
//   String numbers(String n) {
//     String result = 'no';
//
//     for (int i = 0; i < n.length; i++) {
//       if (n.substring(n.length - 1, n.length) ==
//           n.substring(n.length - 1 - i, n.length - i)) {
//         return result = n;
//       }
//     }
//
//     return result = 'no';
//   }
// }


//내거 회생

void main() {
  Math exam = Math();
  print(exam.numbers('5555'));
  print(exam.numbers('3335'));
}
class Math {
  String numbers(String n) {
    String result = n;
    for (int i = 0; i < n.length - 1; i++) {
      if (getCharacter(n, i) !=
          getCharacter(n, i + 1)) {
        result = 'No';
        break;
      }
    }
    return result;
  }
  String getCharacter(String str, int i) {
    return str.substring(i, i + 1);
  }
}





//혜정누님거

// void main() {
//   Exam exam = Exam();
//   print(exam.solution(4444));
//   print(exam.solution(3353));
//   // print(exam.solution(49000));
//   // print(exam.solution(00000));
// }
// class Exam {
//   String solution(int n) {
//     String result = n.toString(); // 4444
//     // 0 ~ 3
//     for (int i = 0; i < result.length - 1; i++) {
//       if (result[i] != result[i + 1]) {
//         result = 'No';
//         break;
//       }
//     }
//     return result;
//   }
// }


