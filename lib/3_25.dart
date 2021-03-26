import 'package:flutter_app/character/clreric.dart';
import 'package:flutter_app/character/hero.dart';

void main() {
  // 생성자를 통한 초기화
  Hero hero = Hero('슈퍼맨',50);
  // 더 이상 이름, hp를 설정 할 수 없다.
  // 버그를 줄이기 위해서, (사람이 실수 할 수 있는 것을 막기 위해)



  Cleric cleric = Cleric();
  cleric.name = '타락천사파워';
  cleric.hp = 50;
  cleric.mp = 4;

  cleric.selfAid();
  cleric.pray(2);
}


