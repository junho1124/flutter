void main() {
  Math exam = Math();
  print(exam.numbers('5555'));
  print(exam.numbers('3335'));
}

class Math {
  String numbers(String n) {
    String result = ' ';

    for (int i = 0; i < n.length; i++) {
      if (n.substring(n.length - 2, n.length - 1) ==
          n.substring(n.length - 1, n.length)) {
        return result = n;
      }
    }

    return result = 'no';
  }
}


