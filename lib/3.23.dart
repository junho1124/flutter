import 'dart:math';

void main() {
   print('주사위 : ${dice4(5,6)}');
}
int dice(int num) { // int dice: dice 라는 변수를 선언한다, dice 함수는 정수 num 하나를 받아서 1~num 까지의 정수를 반환한다. 즉 ()안에가 입력 앞에있는게 출력
  Random random = Random();
  return random.nextInt(num) + 1;  // class type(Random()) 코드는 1개당 일정 부분의 Ram 을 소비한다. 따라서 aksgdms random 값을 코딩 해야 할 때는  Random random = Random(); 코드를 넣어 주는 것이 좋다.
}
// int dice: dice 라는 변수를 선언한다, dice 함수는 정수 num 하나를 받아서 1~num 까지의 정수를 반환한다. 즉 ()안에가 입력 앞에있는게 출력
int dice2(int num) {
  return Random().nextInt(num) + 1;

}
//함수의 내용이 한 줄일 경우에는 다음과 같이 줄여서 쓸수 있다. (람다식 lamda expression)
// num : 파라미터, parameter, 매개변수
int dice3(int num) => Random().nextInt(num) + 1;

// 입력을 두개 받는경우
int dice4(int start, int end) {
  return Random().nextInt(end - start + 1) + start;
}
//매개변수를 {}로 감싸면 선택적으로 매개변수를 받을 수 있다. (선택적 파라미터)
int dice5({int start, int end}) {
  if (start != null && end == null) {
    end = 6;
  }
  if (start == null && end != null) {
  }
  return Random().nextInt(end - start + 1) + start;
}