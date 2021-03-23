import 'dart:math';
import 'dart:io';
//main 메서드 혹은 함수라고 부름
void main() {
  // exam 함수를 실행

//변수의 이름은 영어, _, 숫자 등으로 만든다.
  int a = 10; // 잘못된 이름
  //잘 된 이름(camel case)
  int myAge = 10; // 나이를 camel case로 표시
  //int myAge = 10; / 같은이름으로 다시 변수를 쓸수 없음 / 대소문자 구분할것
  int brotherAge = 20;
  //snake case (뱀형)
  int my_age = 10;
  int brother_age = 20;
  //이미 사용된 변수는 사용 x

  //[숫자형]
  // int d = 5.5; 는 안됨
  double d = 5.5; // 실수(소수점만)

//  [문자영]
  String name = '홍길동';

//  [진워 (참, 거짓)]
  bool isMarried = true;
  bool Married = false;

//  목록

//숫자 목록
  List<int> ageList = [10, 20, 30];
  var ageList2 = [10, 20, 30]; // 모든걸 다 가능(가급적 정의하는게 좋으나 모르겠을 때 var를 쓰면 알아서 해줌)
// 문자열 목록
  List nameList = ['홍길동', '한길동'];
  var nameList2 = ['홍길동', '한길동'];
//  null(값이 없다)
  int g; // null (0은 아님)
  // int g = 0 // 0
  g = 10; // null이 아니고 10

  final double tax = 1.1; // 세금
  int fax = 5;  // 가격
  print('$fax만원 짜리를 4만원으로 할인합니다.');
  // tax = 4;
  fax = 4;
  print('팩스의 새로운 가격은(세금포함 ${fax * tax}만원!');

  finalexam();
}
//exam1 함수를 만들었다.



void exam1() {
  int a = 3;
  int b = 5;
  int result = a * b;
  int c = result;
  print('가로 $a, 세로 $b의 직사각형의 면적은 $c');
}

void exam2() {
  bool isSample = true;
  bool iUunsample = false;
  int x = 10;
  if(isSample||x == 10){
    print("true");
  } else{print("false");
  }
  double z = 3.14;
  int y = 314159265853979;
  String name = '항구를 공격! 적에게 15포인트의 데미지를 주었다';
}
void exam3() {
  print('내 이름은 한석봉입니다.');
}

void exam() {
  var names = ['한석봉', '한삭벙', '헌석봉'];

      //반복문 For문 : 상위의 목록을 가지고 로직을 짤 때
    for(var name in names) {
      print('내 이름은 $name입니다.');
  }
}

//1~20까지 출력
//++ : 1증가
void sample() {
  for (int month = 1; month <=12; month++) {
    print(month);
  }

//100번 실행
  for (int i = 0; i < 100; i++) {
    print('내 이름은 최준호');
  }

  int a = 1;
  // == : 같은지 확인.
  if (a > 5) {
    print('5보다 크다');
  } else {
    print('보가 작다.');
  }
}

void dice() {
    Random rng = Random(); {
      print(rng.nextInt(6) + 1);  //1-6까지
    }
  }

void finalexam() {
  print('점을 보세요.');
  print('이름을 입력 해 주세요.');
    String Uname = stdin.readLineSync();
  print('나이를 입력 해 주세요.');
    String ageString = stdin.readLineSync();
    int age = int.parse(ageString);
    Random A = Random();
    int fortune = A.nextInt(4) + 1;
    print('점괴가 나왔습니다!');
    print('$age살의 ${Uname}씨, 당신의 운세번호는 $fortune입니다.');
    print('1: 대박 2: 중박 3: 보통 4: 망');

}
