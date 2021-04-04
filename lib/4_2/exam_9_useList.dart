import 'dart:io';
void main() {
  List<String> inputLine = stdin.readLineSync()!.split(' '); // 문자열로 구성된 리스트 inputLine 을 입력받아 ' '(공백)을 기준으로 나눠 저장
  int H = int.parse(inputLine[0]); // 정수 H는 inputLine 의 0번째 값 을 정수로 변환한 값
  int W = int.parse(inputLine[1]); // 정수 W는 inputLine 의 1번째 값 을 정수로 변환한 값
  List<List<int>> pixels = []; // 리스트 안에 리스트 pixels 를 선언 (참조. exam_9_List explain) =>
  ///[exam_9_List explain](exam_9_List explain)
  for (int i = 0; i < H; i++) { // 아래 코드를 H번 만큼 반복
    List<int> inputLine = stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList(); // 정수로 구성된 inputLine 에 문자열을 입력받아 공백으로 구분하여 정수로 변환 후 저장
    pixels.add(inputLine); // 리스트 pixels 에 inputLine 값을 하나씩 입력받음
  }
  for (int i = 0; i < H; i++) {
    myPrint(pixels[i]); // pixels 의 i번째 값에 myPrint 함수를 적용
  }
}
void myPrint(List<int> oneLine) { // 메서드 myPrint 를 선언하고 정수로 이뤄진 oneLine 을 리스트로 입력받음
  String result = ''; // 문자열 result 를 선언
  for (int num in oneLine) { //정수 num 을 선언하고 oneLine 안에 있는 모든것을 한번씩 대입 함.
    if (num >= 128) { // 만약에 num 이 128이상이면
      num = 1; // num 은 1
    } else { // 이외에는
      num = 0; // num 은 0
    }
    result += '$num '; // 문자열 result 뒤에 'num '를 추가
  }
  print(result); // result 를 력
}
