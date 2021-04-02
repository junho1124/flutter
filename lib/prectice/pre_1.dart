import 'dart:io';

import 'dart:math';

void main() {
  exam5();
}

void exam() {
  print('점을 보세요.');
  print('이름을 입력하세요.');
  String name = stdin.readLineSync()!;
  print('나이를 입력해 주세요.');
  int age = int.parse(stdin.readLineSync()!);
  Random random = Random();
  int fortune = random.nextInt(3) + 1;
  String forRetern = '';
  if (fortune == 1) {
    forRetern = '쪽박';
  } else if (fortune == 2) {
    forRetern = '중박';
  } else if (fortune == 3) {
    forRetern = '대박';
  } else if (fortune == 4) {
    forRetern = '초대박';
  }

  print('점꾀가 나왔습니다.!');
  print('$age살의 $name씨, 당신의 운세는 $forRetern 입니다.');
}

void exam2() {
  int gender = 0;
  int age = 20;
  print('안녕하세요');
  if (gender == 0) {
    print('나는 남자입니다.');
    print('나는 $age살 입니다.');
  } else
    print('나는 여자입니다.');
  print('잘 부탁합니다.');
}

void exam3() {
  print('[메뉴] 1: 검색 2: 등록 3: 삭제 4: 변결>');
  int num = int.parse(stdin.readLineSync()!);
  if (num == 1) {
    print('검색합니다.');
  } else if (num == 2) {
    print('등록합니다.');
  } else if (num == 3) {
    print('삭제합니다.');
  } else if (num == 4) {
    print('변경합니다.');
  }
  return;
}

void exam4() {
  List<int> numbers = [3, 4, 9];
  print('한자리 숫자를 입력하세요.');
  int input = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < numbers.length; i++) {
    // i는 numbers의 항목수만큼 반복
    if (input == numbers[i]) {
      // 만약에 input 이 numbers의 i번째와 같다면 정답을 프린트.
      print('정답!');
    }
  }
}

void exam5() {
  Math math = Math();
  print(math.numbers(3, 5));
}

class Math {


  String numbers(int m, int n) {
    String result = '';
    for (int i = 0; i < 10; i++) {
      int temp = m + n * i;
      result += '$temp ';
    }
    return result;
  }
}
