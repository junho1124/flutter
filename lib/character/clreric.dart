import 'dart:math';

class Cleric {
  String name;
  int hp;

  final int maxHp = 50; // final : 상수
  int mp;
  final int maxMp = 10;

  void selfAid() {
    if (mp < 5) {
      print('mp 가 모자랍니다.');
    } else {
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
      mp = mp + mpHill;  // mp = min(maxMp, mp + mpHill)
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