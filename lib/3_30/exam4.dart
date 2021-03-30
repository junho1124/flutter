void main() {
  math exam = math();
  print(exam.Try(60, 90));
  print(exam.Try(45, 45));
}

class math {
  int Try(int a, int b) {
    int result = 180 - a - b;

    return result;
  }
}
