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
  CountString countString = CountString(); // 클래스를 불러옴
  String s = stdin.readLineSync()!; // 문자열 s 를 입력 받음
  print(countString.solution(s)); // countString 의 solution에 s를 입력한 값을 출력
}
class CountString { // CountString 클래스를 선언

  int solution(String s) { // 정수 solution 를 선언하고 거기에 문자열 s 를 받겠다.
    String text = s; // 문자열 text를 선언하고 s값을 입력

    int result = 0; // 정수 result를 선언하고 0을 대입
    for (int i = 0; i < text.length; i++) { // text의 문자열 길이 만큼 아래 내용을 반복하겠다.

      if (text.substring(i, i + 1) == 'A') { // 만약 text의 i번째부터 i+1까지의 문자(1글자)와 'A' 가 같다면
        result = result + 1; //result 에 result + 1 을 대입한다.
      }
    } return result; // result 를 출력한다.
  }

}
