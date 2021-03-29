



class Word {
  String letters; // 문자열 letters를 생성

  Word(this.letters); // 기본생성 언에 letters를 넣겠다. 불러올 때 생성자를 입력 할 수 있음

  bool isConsonant(int i) {
    List<String> str = ['a', 'i', 'u', 'e', 'o', 'A', 'I', 'U', 'E', 'O']; // str이란 이름의 리스트에 뒷내용을 넣었다
    String ch = letters.substring(i, i + 1); // String으로 선언된 ch는 i번째 문자에서 i+1번째 문자열 까지(포함x) 읽는다.
    bool result = true; //boll의 결과를 어떤 변수로 정의 하겠다..
    for (var i = 0; i < str.length; i++) { // i가 목록 최대치만큼 1씩 증가
      if (ch == str[i]) {
        result = false; //위의 조건이 맞으면 결과를 바꿔준다. 위에서 result를 한번 정의 했음.
        break; // 멈춤
      }
    }

    return result; // result값 출력
  }
}