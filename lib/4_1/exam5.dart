import 'dart:io';
void main() {
  // 입력
  List<int> inputs = []; // 정수의 빈 리스트 input을 선언
  for (int i = 0; i < 5; i++) { // 아래 코드를 5번 반복
    inputs.add(int.parse(stdin.readLineSync()!)); // 리스트 input에 입력받은 문자를 정수로 변환하여 하나씩 추가
  }
  // 출력
  for (int i = 0; i < 4; i++) { // 괄호 안의 for문을 4번 반복
    print(inputs[i + 1] - inputs[i]); // 리스트 input 의 i+1 번째 리스트를 i 번째로 빼준다.
  }
}