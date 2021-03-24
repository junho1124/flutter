//오늘의 주제 : List(목록)

// 현재 우리가 배우고 있는 버전은 dart 2.7버전이지만 졸업 할 때는 2.12 버전에 익숙 해 져서 나가야됨
// 그렇다고 아예 2.7 버전을 잊으면 안되는 것이 앞으로 우리가 해야 할 일은 구버전에서 신버전으로 업데이트 하는 과정 일 것이

import 'dart:io';

void main() {
  exam();
  List<int> scores = [
    100,
    50,
    70,
    30
  ]; // 과목이 추가되어도 그냥 숫자 하나만 더 넣으면 됨. List 뒤에 <>안에 목록의 종류가 뭔지 넣어 쓰는게 올바른 사용방법.
  //맨뒤에 30 추가
  scores.add(30); //100, 50, 70, 30, 40
  // 40을 뺀다
  scores.remove(40); // 100, 50, 70, 30
  //3번 인덱스값 삭제
  scores.removeAt(3);
  //맨 앞에 것 삭제
  scores.removeAt(0);
  //0번째에 35추가
  scores.insert(0, 35);
  //모두삭제
  scores.clear();
  //뒤에다가 다른 리스트 추가
  scores.addAll([10, 20, 30]);

  int sum = total(scores);
  double average = avg(scores);

  print('합계 : $sum');
  print('평균 : ${average.toStringAsFixed(2)}');
}

int total(List<int> scores) {
  int resilt = 0;
  //for 는 반복구문 for (미니멈; 맥시멈; 연산방법) 을 하면 연산방법에 맞춰 미니멈 -> 맥시멈 까지 반복한다.
  for (var i = 0; i < scores.length; i++) {
    resilt = resilt + scores[i];
  }
  return resilt;
}

double avg(List<int> scores) {
  return total(scores) / scores.length; // 다른 함수 안에서 다른 함수를 사용 할 수가 있다.
}

void exam() {
  List<int> number = [3, 4, 9];
  print('1자리의 숫자를 입력해 주세요.');
  String text = stdin.readLineSync();
  int input = int.parse(text);
  for (int i = 0; i < number.length; i++) {
    if (input == number[i]) {
      print('정답입니다.');
      break;
    } else if (input != number[i]) {
      print('오답입니다.');
      break;
    }
  }
}

// 함수(funcfion) : 입력과 출력이 있고, 입력에 의한 출력값은 항상 동일하다.
// 메소드(method) : 함수랑 형태는 동일. 입력에 의한 출력값이 다를 수 있다. 주로 어떤 기능을 정의할 때 메소드라고 부르기도 한다.void

//메소드는 함수다(o)
//함수는 메소드다(x)

// parameter (매개변수) : 함수 정의 부분에 나열되는 변수
// argument (전달인자) : 실제로 전달되는 값

//한수를 왜 만드냐??
//-자주 사용되는 코드를 재사용(함수에서 함수를 사용 할 수 있다.
//-계산이 목적이다.

//List
//- 동일한 타입의 변수들을 모아서 반복해서 뭔가를 할 때
//- List<int>
//- List<String>
//- 동일한 타입니 아니어도 담을 수는 있다.
//- List
//- var
//-정의
//- List<String> names = ['홍길동', '한석봉'];
//- 가져다 쓰는것 (참조)
//  - names[0] (index는 0부터 시작)
//  - names[0] = ‘오준석’;
//- 반복문
//  - 10회 반복
//   - for (int i = 0; i < 10; i++)
//  - 리스트 갯수만큼 반복
//   - for (int i = 0; i < scores.length; i++)
