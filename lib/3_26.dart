import 'package:flutter_app/character/clreric.dart';
import 'package:flutter_app/character/hero.dart';
import 'package:flutter_app/eqipment/sword.dart';

void main() {
  // 생성자를 통한 초기화
  Hero hero = Hero('슈퍼맨', 50);
  // 칼을 하나 생성
  Sword sword = Sword('불의 검', 50, 100, '불을 뿜는 검.');

  // 캐릭터에게 불의검을 준것.
  hero.sword = sword;
  // 슈퍼맨의 공격
  hero.attack();

  // hp 프로퍼티 (property
  print(hero.hp);
}

