import 'dart:io';

import 'dart:math';

void main() {
  // Hero hero = Hero();
  // hero.name = '슈퍼맨';
  // hero.hp = 100;
  //
  // Hero hero2 = Hero();
  // hero.name = '배트맨';
  // hero.hp = 100;
  //
  // hero.attack();

  Cleric cleric = Cleric();
  cleric.name = '타락천사파워';
  cleric.hp = 50;
  cleric.mp = 5;

  cleric.selfAid();
  // cleric.pray(2);
}

// Hero 타입을 새로 작성
class Hero {
  // field, global variable, 전역변수
  String name;
  int hp;

  void attack() {
    // Local variable, 지역변수
    int hp = 100;
    print('공격!!');
  }
}

// max를 넘어가면 안되면
class Cleric {
  String name;
  int hp;

  // if (hp +  > maxHp) // 회복량을 정의 해주어야.
  final int maxHp = 50; // final : 상수
  int mp;
  final int maxMp = 10;

  void selfAid() {

    if (mp < 5) {
      print('mp 가 모자랍니다.');
    }  else {
      int hill = hp + 5;
      int mpminer = mp - 5;
      hp = hill;
      mp = mpminer;
      print('Full hp now.'); //여기서부터 시작
    }
    if (hp > maxHp) {
      hp = maxHp;
    }

  }

  void pray(int time) {
    {
      int mpHill = time + dice(3, 5);
      mp = mp + mpHill;
      if (mp > maxMp) {
        mp = maxMp;
      } else if (mp < 0) {
        mp = 0;
      }
      print('MP + $mpHill');
    }
  }
}

int dice(int start, int end) {
  return Random().nextInt(end - start + 1) + start;
}
