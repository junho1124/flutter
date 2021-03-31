// import 'dart:io';
//
// void main() {
//   Qiaiet qiaiet = Qiaiet();
//   print(qiaiet.tree(1));
//
// }
//
// class Qiaiet {
//
//   // 첫번 째 줄에는 세개의 정수 a, b, R 을 입력
//   String range(int a, int b, int R) { // a: x좌표, b: y좌표, R: 공사현장의 소음의 크기
//     int x;
//     int y;
//     String result = ' ';
//
//     return result;
//   }
//
//   //두번째 줄에는 나무 그늘의 수를 나타내는 정수 N을 입력
//   String tree(int N) {
//     String treeLoc;
//     String result = '';
//     for (int i = 0; i < N; i++) { // 이어지는 N행에는 각 그늘의 좌표를 나타내는 2개의 정수 x_i, y_i가 입력된.
//       treeLoc = 'x_$i Y_$i';
//
//     }
//     return result;
//   }
//   // if ((x-a)^2+(y-b)^2 >= R^2);
// }

import 'dart:io';

void main() {
  List<String> inputLine = stdin.readLineSync()!.split(' ');
  int a = int.parse(inputLine[0]);
  int b = int.parse(inputLine[1]);
  int R = int.parse(inputLine[2]);
  int N = int.parse(stdin.readLineSync()!);
  // 공원 생성
  Gongsajang gongsajang = Gongsajang(a, b, R);

  // 공사장을 공원에 셋팅
  List<Tree> trees = [];
  for (int i = 0; i < N; i++) {
    List<String> inputLine = stdin.readLineSync()!.split(' ');
    int x = int.parse(inputLine[0]);
    int y = int.parse(inputLine[1]);
    // 나무를 생성
    Tree tree = Tree(x, y);
    trees.add(tree);
  }
  for (int i = 0; i < N; i++) {
    if (gongsajang.isNoisy(trees[i]) == true) {
      print('silent');
    } else {
      print('noizy');
    }
    // 시끄러운지 판단해서 출력
  }
}

class Tree {
  int x;
  int y;

  Tree(this.x, this.y);
}

class Gongsajang {
  int a;
  int b;
  int R;


  Gongsajang(this.a, this.b, this.R);

  bool isNoisy(Tree tree) {
    if ((tree.x - a) * (tree.x - a) +
        (tree.y - b) * (tree.y - b) >=
        R * R) {
      return false;
    }

    return true;
  }
}

class Park {
  Gongsajang gongsajang;
  List<Tree> trees = [];

  Park(this.gongsajang);
}

// import 'dart:io';

//quiz1-way1
// class Exam {
//   String solution(List<int> list1, List<int> list2, List<int> list3) {
//     String result = '';
//     for (int i = 0; i < list2[0] + 2; i += 2) {
//       if (pow(list3[i] - list1[0], 2) + pow(list3[i + 1] - list1[1], 2) >=
//           pow(list1[2], 2)) {
//         // result =  result+'\n'+'silent';
//         result = result + 'silent' + '\n';
//       } else {
//         // result = result+'\n'+'noisy' ;
//         result = result + 'noisy' + '\n';
//       }
//     }
//     return result;
//   }
// }
// //quiz1-way2
// void main() {
//   List<String> position1 = stdin.readLineSync().split(' ');
//   List<String> position2 = stdin.readLineSync().split(' ');
//   List<String> position3 = [];
//   List<String> list1 = [];
//
//   for (int i = 0; i < int.parse(position2[0]); i++) {
//     list1 = stdin.readLineSync().split(' ');
//     position3.add(list1[0]);
//     position3.add(list1[1]);
//   }
//   Exam exam = Exam();
//   print(exam.isNoisy(position1, position2, position3));
// }
//
// class Exam {
//   String isNoisy(List<String> list1, List<String> list2, List<String> list3) {
//     String result = '';
//     for (int i = 0; i < int.parse(list2[0]) + 2; i += 2) {
//       if (pow(int.parse(list3[i]) - int.parse(list1[0]), 2) +
//               pow(int.parse(list3[i + 1]) - int.parse(list1[1]), 2) >=
//           pow(int.parse(list1[2]), 2)) {
//         // result =  result+'\n'+'silent';
//         result = result + 'silent' + '\n';
//       } else {
//         // result = result+'\n'+'noisy' ;
//         result = result + 'noisy' + '\n';
//       }
//     }
//     return result;
//   }
// }
//quiz1-way3





// void main() {
//   List<String> inputLine = stdin.readLineSync()!.split(' ');
//   int a = int.parse(inputLine[0]);
//   int b = int.parse(inputLine[1]);
//   int R = int.parse(inputLine[2]);
//   Gongsajang gongsajang = Gongsajang(a, b, R);
//   Park park = Park();
//   int N = int.parse(stdin.readLineSync()!);
//   for (int i = 0; i < N; i++) {
//     List<String> inputLine = stdin.readLineSync()!.split(' ');
//     int x = int.parse(inputLine[0]);
//     int y = int.parse(inputLine[1]);
//     // 나무를 생성
//     // 시끄러운지 판단해서 출력
//     Tree tree = Tree(x, y);
//     park.trees.add(tree);
//   }
//   // print
//   for (Tree tree in park.trees) {
//     if (gongsajang.isNoisy(tree)) {
//       print('noisy');
//     } else {
//       print('silent');
//     }
//   }
// }
//
// class Tree {
//   int x;
//   int y;
//
//   Tree(this.x, this.y);
// }
//
// class Gongsajang {
//   int a;
//   int b;
//   int R;
//
//   Gongsajang(this.a, this.b, this.R);
//
//   bool isNoisy(Tree tree) {
//     if ((tree.x - a) * (tree.x - a) + (tree.y - b) * (tree.y - b) >= R * R) {
//       return false;
//     }
//     return true;
//   }
// }
//
// class Park {
//   List<Tree> trees = [];
// }
