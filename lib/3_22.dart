void main() {
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
  isMarried = false;

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



}