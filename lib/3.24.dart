//오늘의 주제 : List(목록)

// 현재 우리가 배우고 있는 버전은 dart 2.7버전이지만 졸업 할 때는 2.12 버전에 익숙 해 져서 나가야됨
 // 그렇다고 아예 2.7 버전을 잊으면 안되는 것이 앞으로 우리가 해야 할 일은 구버전에서 신버전으로 업데이트 하는 과정 일 것이

 void main() {

List<int> scores = [100, 50, 70, 30]; // 과목이 추가되어도 그냥 숫자 하나만 더 넣으면 됨. List 뒤에 <>안에 목록의 종류가 뭔지 넣어 쓰는게 올바른 사용방법.

int sum = total(scores[0], scores[1], scores[2], scores[3]);
double average = avg(scores[0], scores[1], scores[2], scores[3]);

print('합계 : $sum');
print('평균 : ${average.toStringAsFixed(2)}');
 }

int total(int kor, int math, int eng, int scince) {
  return kor + math + eng + scince;
}

double avg(int kor, int math, int eng, int scince) {
 return total(kor, math, eng, scince) /4; // 다른 함수 안에서 다른 함수를 사용 할 수가 있다.
}










 // 함수(funcfion) : 입력과 출력이 있고, 입력에 의한 출력값은 항상 동일하다.
 // 메소드(method) : 함수랑 형태는 동일. 입력에 의한 출력값이 다를 수 있다. 주로 어떤 기능을 정의할 때 메소드라고 부르기도 한다.void

 //메소드는 함수다(o)
 //함수는 메소드다(x)

 // parameter (매개변수) : 함수 정의 부분에 나열되는 변수
 // argument (전달인자) : 실제로 전달되는 값

 //한수를 왜 만드냐??
 //-자주 사용되는 코드를 재사용
 //-계산이 목적이다.