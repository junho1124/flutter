void main() {
  Word word = Word('abcdefg');


  print(word.isVowel((0)));
  print(word.isVowel((1)));
  print(word.isVowel((2)));
  print(word.isVowel((3)));
  print(word.isVowel((4)));
  print(word.isVowel((5)));
  print(word.isVowel((6)));
}

class Word {
  String letters;

  Word(this.letters);

  // i번째 글자가 모음이면 true  // a, i, u, e, o
  // bool isVowel(int i) {
  //   List<String> str = ['a', 'i', 'u', 'e', 'o', 'A', 'I', 'U', 'E', 'O'];
  //   for (var st = 0; st < str.length; st++) {
  //     if()
  //   }
  //   return letters.substring(i, i + 1) == str;
  // }

  // ------ ^오답 // 아래부터 수정본
  bool isVowel(int i) {
    List<String> str = ['a', 'i', 'u', 'e', 'o', 'A', 'I', 'U', 'E', 'O'];
    String ch = letters.substring(i, i + 1);
    bool result = false;
    for (var i = 0; i < str.length; i++) {
      if (ch == str[i]) {
        result = true;
        break;
      }
    }

    return result;
  }
}


class Word2 {
  String letters;

  Word(this.letters);

  bool isVowel(int i) {
    List<String> str = ['a', 'i', 'u', 'e', 'o', 'A', 'I', 'U', 'E', 'O'];
    String ch = letters.substring(i, i + 1);
    bool result = true;
    for (var i = 0; i < str.length; i++) {
      if (ch == str[i]) {
        result = false;
        break;
      }
    }

    return result;
  }
}






