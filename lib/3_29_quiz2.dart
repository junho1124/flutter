class Word {
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