import 'dart:math';

void main() {
   print('주사위 : ${dice(6)}');
}
int dice(int num) { // int dice: dice 라는 변수를 선언한다, dice 함수는 정수 num 하나를 받아서 1~num 까지의 정수를 반환한다. 즉 ()안에가 입력 앞에있는게 출력
  Random random = Random();
  return random.nextInt(num) + 1;
}