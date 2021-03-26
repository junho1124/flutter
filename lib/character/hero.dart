import 'package:flutter_app/eqipment/sword.dart';

// 프로그램 전채적으로 공유
// 좋은 방법은 아니다...
// top level 변수
int money = 100;

class Hero {
  //공유자원
  static int money = 100;

  // field, global variable, 전역변수
  String _name; // "_(변수이름)" 아무나 변수에 접촉 및 조작을 못하게 막는 것
  int _hp;
  Sword sword;

  // 생성자 (constructor)
  Hero(this._name, this._hp);

  // 외부에서 읽기 위해 제공하는 프로퍼티
  int get hp => _hp;

  // int get hp {
  //   return _hp;
  // }
  void attack() {
    // Local variable, 지역변수
    _hp = _hp - 5;
    print('$_name이 공격!!');

    if (sword != null) {
      sword.attack();
    }
  }
  void run() {

  }
}