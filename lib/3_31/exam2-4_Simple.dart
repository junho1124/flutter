import 'dart:io';
void main() {
  String input = stdin.readLineSync();  // PAIZA
  Leet leet = Leet(input);
  print(leet.toLeet()); // P4IZ4
}
// Leet 클래스
class Leet {
  // Map : 자료를 저장하는 방법 중 하나
  var rule = {
    'A': '4',
    'E': '3',
    'G': '6',
    'I': '1',
    'O': '0',
    'S': '5',
    'Z': '2',
  };
  // Leet 클래스를 생성할 때 입력받을 문자열
  String word;
  // 생성자
  Leet(this.word);
  // 규칙을 적용한 문자열을 반환하는 메서드
  String toLeet() {
    // 결과를 저장할 변수
    String result = '';
    // word의 문자열의 수 만큼 반복
    for (int i = 0; i < word.length; i++) {
      String ch = word[i]; // 원래의 i번째 한글자
      result += rule[ch] ?? ch;
    }
    // 결과를 리턴
    return result;
  }
}