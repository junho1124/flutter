import 'dart:io';

void main() {
  exam4();
}

void exam1() {

  // 정수 weight를 50으로 선언
  int weight = 50;

  // 정수 age1을 1로 선언
  int age1 = 1;

  // 정수 age2를 4로 선언
  int age2 = 4;

  // 정수 age를 1로 선언
  int age = 1;

  // 문자열 name을 서마트로 선언
  String name = '서마트';

  // weight가 60과 같은가
  if (weight == 60)

  // age1과 age2의 합의 2배가 60보다 큰가
  if ((age1 + age2) * 2 > 60)

  // age가 홀수있가
  if (age % 2 != 0) ;

  // name이 스마트 인가?
  if (name == '스마트') ;
}

void exam2() {
  int cost = 300;
  if (cost = 300 * 15); // 안됨 ==을 쓰면 됨

  if (3); // 안됨 비교할게 없음

  int age = 1;
  if (age != 30) ; //됨

  if (true) ; // 되긴 됨

  int b = 5;
  if (b + 5 < 20) ; // 됨

  var gender = 10;
  if (gender = true) // 안됨 ==을 입력하면 됨
}

void exam3() {
  // int형 번수 gender를 0으로 선언
  int gender = 0;

  //int형 변수 age를 10으로 선언
  int age = 10;

  //화면에 안녕하세요 표시
  print('안녕하세요.');
  if (gender == 0) {
  // 만약 변수 gender 가 0이면 “나는 남자입니다"
    print('나는 남자다.');
  } else {
  //그렇지 않으면 “나는 여자입니다" 를 표시
    print('나는 여자다.');
  }
  if (gender == 0) {
  //만약 변수 gender 가 남자이면 age 변수의 값을 표시하고, 뒤에 “살입니다" 를 붙여서 표시
    print('$age살입니다.');
  }

  //마지막에 “잘 부탁합니다" 를 표시
  print('잘 부탁 합니다.');
}

void exam4() {
  print('[메뉴] 1:겸색 2:등록 3:삭제 4:변경 >');
  String selected = stdin.readLineSync();
  int selecte = int.parse(selected);
  if (selecte == 1) {
    print('감사합니다.');
  } else if (selecte == 2) {
    print('등록합니다.');
  } else if (selecte == 3) {
    print('삭제합니다.');
  } else if (selecte == 4) {
    print('변경합니다.');
  }
}
