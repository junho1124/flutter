import 'dart:math';

class Cleric {
  String _name;
  int _hp = 50;
  int _mp = 10;
  static final int maxHp = 50; // final : 상수
  static final int maxMp = 10;

  Cleric(this._name, this._hp, this._mp);

  void selfAid() {
    if (_mp < 5) {
      print('mp 가 모자랍니다.');
    } else {
      int hill = _hp + 5;
      int mpminer = _mp - 5;
      _hp = hill;
      _mp = mpminer;
      print('Full hp now.'); //여기서부터 시작
    }
    if (_hp > maxHp) {
      _hp = maxHp;
    }
  }

  void pray(int time) {
    {
      int mpHill = time + dice(3, 5);
      _mp = _mp + mpHill;  // mp = min(maxMp, mp + mpHill)
      if (_mp > maxMp) {
        _mp = maxMp;
      } else if (_mp < 0) {
        _mp = 0;
      }
      print('MP + $mpHill');
    }
  }
}

int dice(int start, int end) {
  return Random().nextInt(end - start + 1) + start;
}