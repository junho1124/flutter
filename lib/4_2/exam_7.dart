import 'dart:io';
import 'dart:math';

void main() {
  Exam exam = Exam();
  List<String> input = stdin.readLineSync()!.split(' ');
  List<int> numbers = input.map(int.parse).toList();
  print(exam.solution(numbers));
}

class Exam {
  int solution(List<int> numbers) {
    int result = 0;
    int a =
        int.parse('${numbers.elementAt(0)}' + '${numbers.elementAt(1)}'); //92
    int b =
        int.parse('${numbers.elementAt(0)}' + '${numbers.elementAt(2)}'); //93
    int c =
        int.parse('${numbers.elementAt(0)}' + '${numbers.elementAt(3)}'); //98
    int d =
        int.parse('${numbers.elementAt(1)}' + '${numbers.elementAt(0)}'); //29
    int e =
        int.parse('${numbers.elementAt(1)}' + '${numbers.elementAt(2)}'); //23
    int f =
        int.parse('${numbers.elementAt(1)}' + '${numbers.elementAt(3)}'); //28
    int g =
        int.parse('${numbers.elementAt(2)}' + '${numbers.elementAt(0)}'); //39
    int h =
        int.parse('${numbers.elementAt(2)}' + '${numbers.elementAt(1)}'); //32
    int i =
        int.parse('${numbers.elementAt(2)}' + '${numbers.elementAt(3)}'); //38
    int j =
        int.parse('${numbers.elementAt(3)}' + '${numbers.elementAt(0)}'); //89
    int k =
        int.parse('${numbers.elementAt(3)}' + '${numbers.elementAt(1)}'); //82
    int l =
        int.parse('${numbers.elementAt(3)}' + '${numbers.elementAt(2)}'); //83
    //9238
    int A = a + i;
    int B = a + l;
    int C = b + f;
    int D = b + k;
    int E = c + e;
    int F = c + h;
    int G = g + f;
    int H = i + d;
    int I = k + g;
    int J = j + e;
    int K = j + h;
    int L = l + d;
    List<int> sum = [A, B, C, D, E, F, G, H, I, J, K, L];
    int findMax(List<int> sum) {
      return sum.reduce(max);
    }

    return result = findMax(sum);
  }
}
