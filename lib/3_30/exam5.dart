void main() {
  math exam = math();
  print(exam.dice(3));
  print(exam.dice(1));
}

class math {
  int dice(int n) {
    int result = 0;
    if (n == 1) {
      result = 6;
    } else if (n == 2) {
      result = 5;
    } else if (n == 3) {
      result = 4;
    } else if (n == 4) {
      result = 3;
    } else if (n == 5) {
      result = 2;
    } else if (n == 6) {
      result  = 1;
    }

    return result;
  }
}
