import 'dart:math';
import 'dart:io';

void main() {
  calcTriangleArea(3, 4);
  calcCircleArea2(5);
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

void email1(String title, String address, String text) {
  print('$address 에 메일을 전송한다.\n제목: $title\n내용: text');
  }

// 오버로딩 : 상위 메소드에서 정의한 값을 하위 메소드에서 재정의 하는 것.(이라고 이해 했습니다……)
void email(String title, String address, String text) {
  String title = '제목없음';
  print('$address 에 메일을 전송한다.\n제목: $title\n내용: text');
}

void calcTriangleArea(double bottom, double height) {
  print('${bottom * height / 2}cm^2');
}

void calcCircleArea(double radius) {
  print('${2 * pi * radius * radius} cm^2');
}

// 소수점 2자리 까지 반올림 하는 코드 ".toStringAsFixed(2)"
void calcCircleArea2(double radius) {
  double rad = double.parse((2 * pi * radius * radius).toStringAsFixed(2));
  print('$rad cm^2');
}
