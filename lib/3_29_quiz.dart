void main() {
  Word word = Word('leaf'); // 밑에서 생성한 생성자를  여기서 호출 한것.
  print(word.toPlural()); // dishes

  // print(word.isVowel((0)));
  // print(word.isVowel((1)));
  // print(word.isVowel((2)));
  // print(word.isVowel((3)));
  // print(word.isVowel((4)));
  // print(word.isVowel((5)));
  // print(word.isVowel((6)));
}

// class Word {
//   String letters;
//
//   Word(this.letters);

// i번째 글자가 모음이면 true  // a, i, u, e, o
// bool isVowel(int i) {
//   List<String> str = ['a', 'i', 'u', 'e', 'o', 'A', 'I', 'U', 'E', 'O'];
//   for (var st = 0; st < str.length; st++) {
//     if()
//   }
//   return letters.substring(i, i + 1) == str;
// }

// ------ ^오답 // 아래부터 수정본
//   bool isVowel(int i) {
//     List<String> str = ['a', 'i', 'u', 'e', 'o', 'A', 'I', 'U', 'E', 'O'];
//     String ch = letters.substring(i, i + 1);
//     bool result = false;
//     for (var i = 0; i < str.length; i++) {
//       if (ch == str[i]) {
//         result = true;
//         break;
//       }
//     }
//
//     return result;
//   }
// }
// class Word {
//   String letters;
//   Word(this.letters);
//   // i번째 글자가 모음이면 true  // a, i, u, e, o
//   bool isVowel(int i) => 'aiueo'.contains(letters.substring(i, i + 1).toLowerCase());
//   bool isConsonant(int i) => !isVowel(i);
// }
class Word {
  String letters;

  Word(this.letters);

  bool isVowel(int i) =>
      'aiueo'.contains(letters.substring(i, i + 1).toLowerCase());

  bool isConsonant(int i) => !isVowel(i);

  String toPlural() {
    List<String> es = ['o', 's', 'x', 'ch', 'sh'];

    for (int i = 0; i < es.length; i++) {
      if (es.elementAt(i) ==
          letters.substring(letters.length - 1, letters.length)) {
        return letters + 'es';
      }
      if (es.elementAt(i) ==
          letters.substring(letters.length - 2, letters.length)) {
        return letters + 'es';
      }
      break;
    }
    List<String> ves = ['f', 'fe'];

    for (int i = 0; i < es.length; i++) {
      if (ves.elementAt(i) ==
          letters.substring(letters.length - 1, letters.length)) {
        return letters + 'ves';
      }
      if (ves.elementAt(i) ==
          letters.substring(letters.length - 2, letters.length)) {
        return letters + 'ves';
      }
      break;
    }
    if (isConsonant(letters.length - 2) && letters.endsWith('y')) {
      return '${letters.substring(0, letters.length - 1)}ies';
    }
    return letters + 's';
  }
}
