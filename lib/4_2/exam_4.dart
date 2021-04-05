void main() {
  Math exam = Math();
  print(exam.numbers('5555'));
  print(exam.numbers('1112'));
}
class Math {
  String numbers(String n) {
    String result = n;
    for (int i = 0; i < n.length - 1; i++) {
      if (getCharacter(n, i) !=
          getCharacter(n, i + 1)) {
        result = 'No';
        break;
      }
    }
    return result;
  }
  String getCharacter(String str, int i) {
    return str[i];
  }
}