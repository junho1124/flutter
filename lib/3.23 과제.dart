import 'dart:math';
import 'dart:io';



void main() {
  email2(address : 'asda', text: 'fdafafdaf');
}

void intoduceOneslef() {
  print('이름을 입력 해 주세요');
  String name = stdin.readLineSync();
  print('나이를 입력 해 주세요');
  int age = int.parse(stdin.readLineSync());
  print('키를 입력 해 주세요');
  int high = int.parse(stdin.readLineSync());
  print('당신의 성별은 무엇 인가요?');
  String sex = stdin.readLineSync();
  print('안녕하세요 저는 $age살 $name입니다. 키는 $high cm 구요, $sex입니다.');
}
// void는 리턴값이 없을 때
void email1(String title, String address, String text) {
  print('$address 에 메일을 전송한다.\n제목: $title\n내용: text');
}

// 오버로딩 : 상위 메소드에서 정의한 값을 하위 메소드에서 재정의 하는 것.(이라고 이해 했습니다……)
void email(String title, String address, String text) {
  String title = '제목없음';
  print('$address 에 메일을 전송한다.\n제목: $title\n내용: text');
}

void email2({String title, String address, String text}) {
  print('$address 에 메일을 전송한다.');

  if (title == null) {
    title = '제목없음';
  }

  print('제목 : $title');
  print('내용 : $text');
}

// 리턴값이 더블이다. 라고 선언
double calcTriangleArea(double bottom, double height) {
  return bottom * height / 2;
}
// 계산이 들어간 경우에는 상위 class 에서 print 명령으 해야함
double calcTriangleArea2(double bottom, double height) {
  double resert = bottom * height / 2;
  return resert; // 리턴은 출력값 but 함수에서 벗어나는 순간 그냥 값이 된다. 따라서 다시한번 이 값을 선언하고 정의 해 주어야 한다.
}
// =>를 쓰면 함수의 계산 내용을 바로 작성해여 리턴 해줌
double calcTriangleArea3(double bottom, double height) => bottom * height / 2;


double calcTircleArea(double radius) {
  return pi * radius * radius;
}

// 소수점 2자리 까지 반올림 하는 코드 ".toStringAsFixed(2)"
double calcCircleArea2(double radius) {
  return radius = double.parse((2 * pi * radius * radius).toStringAsFixed(2)); // 변태적인 코딩... 일반적으로 return 값은 파라미터 값과 다르게 하는것이 정석...
}

double calcCircleArea3(double radius) {
  return double.parse((2 * pi * radius * radius).toStringAsFixed(2));
}