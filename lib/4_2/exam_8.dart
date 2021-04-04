import 'dart:io';

import 'dart:math';

void main() {
  Exam exam = new Exam(); //exam 객채를 불러온다.
  String E = stdin.readLineSync()!; //문자열 E를 입력 받겠다.

  print(exam.solution(E)); // exam 객채의 solution기능에 E를 대입한 값을 프린트한다.
}

class Exam { // 객채 Exam생성
  int solution(String E) { // 정수값 으로 출력되는 solution에 문자열 E를 받는다.
    List<String> A = E.split('+'); //문자열로 구성된 리스트 A에 E를 +를 기준으로 구분하여 받겠다.

    int result = 0; // 정수값 result를 0으로 초기화.
    for (int i = 0; i < A.length; i++) { // 리스트 A의 갯수만큼 아래 코드를 반복
      String a = A.elementAt(i); // A의 i번째를 문자열 a로 지정한다.
      for (int i = 0; i < a.length; i++) { // 문자열 a의 길이만큼 아래 코드를 반복
        if (a[i] == '/') { // 만약 문자열 a의 i번째가 '/'라면
          result = result + 1;// result는 result + 1로 저장한다.
        } else if (a[i] == '<') { // 이외에 만약 a의 i번째가 '<'면
          result = result + 10; // result = result + 10
        }
      }
    }
    return result; //result를 출력한다.
  }
}
